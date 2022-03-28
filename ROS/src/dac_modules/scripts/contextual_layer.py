import glob
import os
import numpy as np
import pickle as pkl 
from attractor import Attractor

ltm_path = "/home/robotics20/robotic_arena_ws/ROS/src/dac_modules/ltm/" # folder to save LTM

'''
    Parent CL class 
'''

class ContextualLayer(object):
    def __init__(self, stm=50, ltm=500, pl=20, forget="FIFO", decision_inertia=True, load_ltm=False, action_space=9, coll_thres_act = 0.98, coll_thres_prop = 0.995, alpha_tr = 0.05):
        global ltm_path
        
        self.ns = stm  # STM sequence length
        self.nl = ltm  # LTM buffer capacity: total number of sequences stored in LTM
        self.pl = pl
        self.forget = forget # can be "FIFO", "SING" or "PROP"
        self.fgt_ratio = 0.1
        self.decision_inertia = decision_inertia # sequential bias
        
        self.STM = [[np.zeros(self.pl), np.zeros(2)] for _ in range(self.ns)] 
        self.LTM = [[],[],[]]
        self.action = 0                     
        self.action_space = action_space
        
        self.coll_thres_act = coll_thres_act  # default 0.9           
        self.coll_thres_prop = coll_thres_prop  # default 0.95    
        self.alpha_tr = alpha_tr  # default 0.005          
        self.tr = []          
        self.tau_decay = 0.9                          
        self.last_actions_indx = []
        self.selected_actions_indx = []
        self.entropy = 0.
        
        # Get latest LTM file in folder
        ltm_files = glob.glob(ltm_path + "*.pkl") 
        latest_ltm = max(ltm_files, key=os.path.getctime)
        if load_ltm: self.load_LTM(latest_ltm)

    def advance(self, prototype):
        q = np.ones(self.action_space)/self.action_space

        if len(self.LTM[0]) > 0:
            bias = 1
            if self.decision_inertia:
                bias = np.array(self.tr)
                #print("bias length: ", len(bias[0])) # proportional to sequence's length, n = LTM sequences
            collectors = (1 - (np.sum(np.abs(prototype - self.LTM[0]), axis=2)) / len(prototype)) * bias

            # Collector values must be above both thresholds (absolute and relative) to contribute to action
            self.selected_actions_indx = (collectors > self.coll_thres_act) & ((collectors/collectors.max()) > self.coll_thres_prop) # proportional to sequence's length, n = LTM sequences

            if np.any(self.selected_actions_indx):
                actions = np.array(self.LTM[1])[self.selected_actions_indx]
                
                # Chooose (normalized, or relative) rewards of sequences with actions selected 
                rewards = np.array(self.LTM[2])[(np.nonzero(self.selected_actions_indx)[0])]
                rewards = rewards / rewards.max()
                
                # Choose (normalized) distances of each action selected within its sequence
                distances = (self.ns - np.nonzero(self.selected_actions_indx)[1]) / self.ns
                
                # Choose collector info about the actions selected that take euclidean distance of current state and collector's selected prototypes
                collectors = collectors[self.selected_actions_indx]

                # Map each selected action-vector into a matrix of N dimensions where N are the dimensions of the action space
                m = np.zeros((len(actions), self.action_space))   
                m[np.arange(len(actions)), actions[:].astype(int)] = collectors * (rewards * np.exp(-distances / self.tau_decay))
                #m[np.arange(len(actions)), actions[:,0].astype(int), actions[:,1].astype(int)] = collectors * (rewards * np.exp(-distances / self.tau_decay))
                #m[np.arange(len(actions)), actions[:,0].astype(int), actions[:,1].astype(int)] = ((collectors * rewards) / distances)
                
                m = np.sum(m, axis=0)
                m = m + np.abs(m.min()) + 1 
                m = m / m.sum()  # proportion of being selected based on the action's relative reward based on the stored experiences
                q = m.flatten()
                
                # Action selection
                self.action = np.random.choice(a=self.action_space, p=q)    
                
                # Compute entropy over the policy
                self.calculate_entropy(q)

            self.selected_actions_indx = self.selected_actions_indx.tolist()
                   
        return self.action, self.entropy 

    # Couplet expects a list with [prototype, action]
    # Goal is -1 or 1 indicating aversive or appetitive goal has been reached
    def update_STM(self, couplet=[]):
        # Update STM buffer with the new couplet 
        self.STM.append(couplet)
        # Renew the STM buffer by removing the first value of the STM
        self.STM = self.STM[1:] 
        
    def update_sequential_bias(self):
        # Updates the last action indexes first with the current actions indexes
        self.last_actions_indx = np.copy(self.selected_actions_indx).tolist()  

        # Update trigger values
        if (len(self.tr) > 0) and self.decision_inertia:
            self.tr = (np.array(self.tr) * (1. - self.alpha_tr)) + self.alpha_tr # decay by default
            self.tr[(self.tr < 1.)] = 1. # all trigger values below 1 are reset to 1
            
            tr_last_actions_indx = np.array(self.last_actions_indx)
            self.tr[tr_last_actions_indx] = 1.  # the trigger value of previously selected segments are reset to 1 
            last_actions_shifted = np.roll(self.last_actions_indx, 1, axis=1) # shift the matrix one step to the right
            last_actions_shifted[:, 0] = False  # set the first value of each sequence to False  

            # Increase only the trigger value of the next element in sequence (after the ones selected before)
            tr_change_indx = np.array(last_actions_shifted)
            self.tr[tr_change_indx] += 0.01  # increase by an arbitrary amount
            self.tr = self.tr.tolist()

         # TODO: add forgetting or sequences based on trigger values
    
    def reset_STM(self):
        self.STM = [[np.zeros(self.pl), np.zeros(2)] for _ in range(self.ns)] 
    
    def reset_sequential_bias(self):
        if (len(self.tr) > 0): 
            self.tr = np.array(self.tr)
            self.tr[:] = 1.0
            self.tr = self.tr.tolist()
        
    def update_LTM(self, reward=0):
        # Update LTM if goal state reached and there is still free space in LTM
        if (reward > 0.) and (len(self.LTM[2]) < self.nl):
            print ("Goal state reached. Reward: ", reward)
            
            self.LTM[0].append([e[0] for e in self.STM])  # append prototypes of STM couplets
            self.LTM[1].append([a[1] for a in self.STM])  # append actions of STM couplets
            self.LTM[2].append(reward)
            
            self.tr.append(np.ones(self.ns).tolist())
            self.selected_actions_indx.append(np.zeros(self.ns, dtype="bool").tolist())
            self.last_actions_indx.append(np.zeros(self.ns, dtype="bool").tolist())
            
            print("Sequences in LTM: ", len(self.LTM[2]), " - Sequence length: ", len(self.STM))

        # Remove sequences when LTM is full
        if (len(self.LTM[2]) >= self.nl) and self.forget != "NONE":
            print ("LTM is full. Forgetting activated...")

            if self.forget == "FIFO":
                self.LTM[0] = np.delete(np.array(self.LTM[0]),0,0).tolist()
                self.LTM[1] = np.delete(np.array(self.LTM[1]),0,0).tolist()
                self.LTM[2] = np.delete(np.array(self.LTM[2]),0,0).tolist()
                self.tr = np.delete(np.array(self.tr),0,0).tolist()
                self.selected_actions_indx = np.delete(np.array(self.selected_actions_indx),0,0).tolist()
                self.last_actions_indx = np.delete(np.array(self.last_actions_indx),0,0).tolist()
                print ("First memory sequence forgotten.")
                    
            elif self.forget == "SING":                
                idx = np.argsort(self.LTM[2])
                self.LTM[0] = np.delete(np.array(self.LTM[0]),idx[0],0).tolist()
                self.LTM[1] = np.delete(np.array(self.LTM[1]),idx[0],0).tolist()
                self.LTM[2] = np.delete(np.array(self.LTM[2]),idx[0],0).tolist()
                self.tr = np.delete(np.array(self.tr),idx[0],0).tolist()
                self.selected_actions_indx = np.delete(np.array(self.selected_actions_indx),idx[0],0).tolist()
                self.last_actions_indx = np.delete(np.array(self.last_actions_indx),idx[0],0).tolist()
                print ("Lowest rewarded sequence forgotten")
                               
            elif self.forget == "PROP":
                maxfgt = int(len(self.LTM[2]) * self.fgt_ratio)
                idx = np.argsort(self.LTM[2])
                self.LTM[0] = np.delete(np.array(self.LTM[0]),idx[0:maxfgt],0).tolist()
                self.LTM[1] = np.delete(np.array(self.LTM[1]),idx[0:maxfgt],0).tolist()
                self.LTM[2] = np.delete(np.array(self.LTM[2]),idx[0:maxfgt],0).tolist()
                self.tr = np.delete(np.array(self.tr),idx[0:maxfgt],0).tolist()
                self.selected_actions_indx = np.delete(np.array(self.selected_actions_indx),idx[0:maxfgt],0).tolist()
                self.last_actions_indx = np.delete(np.array(self.last_actions_indx),idx[0:maxfgt],0).tolist()
                print ("Number of forgotten sequences: ", maxfgt)      
    
    def calculate_entropy(self, policy):
        # Entropy of the probability distribution for policy stability
        # The sum of the % distribution multiplied by the logarithm -in base 2- of p
        q = policy
        qlog = np.log2(q)
        infs = np.where(np.isinf(qlog))
        qlog[infs] = 0.
        qqlog = q * qlog
        qsum = -np.sum(qqlog)
        self.entropy = qsum

    def normalize_vector(self, v):
        v_norm = v / np.max(v)
        v_norm[np.isnan(v_norm)] = 0.
        return v_norm

    def save_LTM(self):
        global ltm_path
        with open(ltm_path + "ltm_" + str(len(self.LTM[2])) + ".pkl", "wb") as f:
            pkl.dump(self.LTM, f)

    def load_LTM(self, filename):
        file_ltm = open(filename, "rb")
        self.LTM = pkl.load(file_ltm)
        print("LTM loaded. Memories retrieved: ", len(self.LTM[2]))
        file_ltm.close()
        
        # Generate trigger values matrix accordingly
        for s in (self.LTM[2]):
            self.tr.append(np.ones(self.ns).tolist())
            self.selected_actions_indx.append(np.zeros(self.ns, dtype="bool").tolist())
            self.last_actions_indx.append(np.zeros(self.ns, dtype="bool").tolist())

'''
    Child attractor CL class 
'''

class ContextualLayerAttractor(ContextualLayer):
    def __init__(self, stm=50, ltm=3, pl=20, forget="PROP", decision_inertia=True, load_ltm=False, action_space=9, coll_thres_act=0.98, coll_thres_prop=0.995, alpha_tr=0.05):
        super().__init__(stm, ltm, pl, forget, decision_inertia, load_ltm, action_space, coll_thres_act, coll_thres_prop, alpha_tr)
        self.attractor = Attractor()
        self.max_input = 9 

    def advance(self, prototype):
        q = np.ones(self.action_space)/self.action_space

        if len(self.LTM[0]) > 0:
            bias = 1
            if self.decision_inertia:
                bias = np.array(self.tr)
                #print("bias length: ", len(bias[0])) # proportional to sequence's length, n = LTM sequences
            collectors = (1 - (np.sum(np.abs(prototype - self.LTM[0]), axis=2)) / len(prototype)) * bias

            # Collector values must be above both thresholds (absolute and relative) to contribute to action
            self.selected_actions_indx = (collectors > self.coll_thres_act) & ((collectors/collectors.max()) > self.coll_thres_prop) # proportional to sequence's length, n = LTM sequences

            if np.any(self.selected_actions_indx):
                actions = np.array(self.LTM[1])[self.selected_actions_indx]
                
                # Chooose (normalized, or relative) rewards of sequences with actions selected 
                rewards = np.array(self.LTM[2])[(np.nonzero(self.selected_actions_indx)[0])]
                rewards = rewards / rewards.max()
                
                # Choose (normalized) distances of each action selected within its sequence
                distances = (self.ns - np.nonzero(self.selected_actions_indx)[1]) / self.ns
                
                # Choose collector info about the actions selected that take euclidean distance of current state and collector's selected prototypes
                collectors = collectors[self.selected_actions_indx]

                # Map each selected action-vector into a matrix of N dimensions where N are the dimensions of the action space
                m = np.zeros((len(actions), self.action_space))   
                m[np.arange(len(actions)), actions[:].astype(int)] = collectors * (rewards * np.exp(-distances / self.tau_decay))
                #m[np.arange(len(actions)), actions[:,0].astype(int), actions[:,1].astype(int)] = collectors * (rewards * np.exp(-distances / self.tau_decay))
                #m[np.arange(len(actions)), actions[:,0].astype(int), actions[:,1].astype(int)] = ((collectors * rewards) / distances)
                
                m = np.sum(m, axis=0)
                m = m + np.abs(m.min()) + 1 
                m = m / m.sum()  # proportion of being selected based on the action's relative reward based on the stored experiences
                q = m.flatten()
                              
                inputs = q * self.max_input
                outputs = self.attractor.advance(I=inputs, time=1)  # time in sec
                self.attractor.reset()
                # Action selection
                self.action = np.argmax(outputs) 

                # Compute entropy over the policy
                self.calculate_entropy(q)

            self.selected_actions_indx = self.selected_actions_indx.tolist()
                   
        return self.action, self.entropy       
           

