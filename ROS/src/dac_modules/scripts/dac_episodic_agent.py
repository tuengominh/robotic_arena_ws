#!/usr/bin/env python3
import rospy
import sys
import time
import numpy as np
import json
import csv
from utils import *
#sys.path.append("./DAC/")
from reactive_layer import ReactiveLayer as RL
from perceptual_layer import PerceptualLayer as PL
from adaptive_layer import AdaptiveLayer as AL
from contextual_layer import ContextualLayer as CL
from std_msgs.msg import String
from sensor_msgs.msg import CompressedImage
from robots_msg.msg import target, resource, discrete_action

'''
    DAC-ML agent performing AnimalAI experiment
    Using autoencoder trained offline 
    Apply Q-learning adaptive layer
'''

eps_count = 1
next_t = 10000
time_init = time.time()
filename = "/home/robotics20/robotic_arena_ws/ROS/src/dac_modules/experiment_data_dac_ml_q.csv"
robot_markerId = "3"

class Agent(object):
    def __init__(self):
        global filename
        
        # Initialize DAC layers and specify parameters
        self.action_space = 9
        self.p_len = 20  
        self.minimum_memory = 5  
        self.previous_couplet = np.array([np.zeros(self.p_len), np.random.choice(self.action_space)])           
        self.RL = RL()
        self.PL = PL(prototype_length=self.p_len, frozen_weights=True, offline=True, model_ver=0) 
        self.AL = AL(action_space=self.action_space, prototype=self.previous_couplet[0])
        self.CL = CL(stm=50, ltm=500, prototype_length=self.p_len, forget="FIFO", action_space=self.action_space, load_ltm=False, decision_inertia=True, coll_thres_act = 0.98, coll_thres_prop = 0.995, alpha_tr = 0.05)         
        
        self.rec_threshold = 0.005 # default 0.01, originally 0.001, best loss achieved 0.0024   
        self.init_var()
 
        # Subscribe to ROS topics
        self.sub_env = rospy.Subscriber("/arena/resource", resource, self.update_reward, queue_size=1)
        self.sub_dist = rospy.Subscriber("/eco/perception", target, self.r_step, queue_size=1)
        self.sub_img = rospy.Subscriber("/eco/images", CompressedImage, self.c_step, queue_size=1)
        self.sub_coor = rospy.Subscriber("/arena/coordinates", String, self.coor_callback, queue_size=1)
        self.sub_angle = rospy.Subscriber("/arena/angles", String, self.angle_callback, queue_size=1)
            
        # Publish to ROS topics
        self.pub_action = rospy.Publisher("/eco/discrete_action", discrete_action, queue_size=1)     
        self.r = rospy.Rate(10)
        
        # Log data to CSV
        print("Logging data to CSV file...")
        with open(filename, "w", encoding="UTF8") as csv_file:
            csv_writer = csv.DictWriter(csv_file, fieldnames=['Episode', 'Reward', 'r_action', 'c_action', 'a_action', 'c_entropy', 'a_entropy', 'CL_activity', 'Action', 'rec_err', 'PL_reliability']) 
            csv_writer.writeheader() 

    def coor_callback(self, rosdata):
        global robot_markerId
        coor_msg = json.loads(rosdata.data) 
        coordinates = coor_msg[robot_markerId]  
        self.cX, self.cY, self.cZ = convert_coors(coordinates[2], coordinates[0], coordinates[1])         
    
    def angle_callback(self, rosdata):
        global robot_markerId
        angle_msg = json.loads(rosdata.data)   
        self.robot_angle = angle_msg[robot_markerId]
    
    def update_reward(self, rosdata):
        self.current_reward = rosdata.impact               
        
    def r_step(self, rosdata):
        # Receive sensor data 
        self.range_c = rosdata.range_c # laser sensor
        self.range_l = rosdata.range_l # left ir sensor
        self.range_r = rosdata.range_r # right ir sensor
        
        # Get the action chosen by RL
        self.r_action = self.RL.rand_step(self.range_c, self.range_l, self.range_r)  
 
    def update_STM(self, couplet):
        # Update STM based on previous (state, action) couplet
        self.CL.update_STM(couplet)
        self.CL.update_sequential_bias()

    def update_LTM(self, reward):
        # Update LTM based on current reward
        self.CL.update_LTM(reward)
 
    def update_vision(self, img):        
        self.PL.advance(img)
        rec_error = self.PL.get_reconstruct_error() 
        prototype = self.PL.get_prototype(img)             
        return prototype, rec_error
        
    def c_step(self, rosdata):
        global eps_count, next_t, time_init, filename
        
        # MEMORY UPDATE PHASE      
        self.update_STM(self.previous_couplet)
        self.update_LTM(self.current_reward)  

        # PERCEPTION UPDATE PHASE
        prototype, rec_error = self.update_vision(rosdata)
        self.rec_error = rec_error
        if self.rec_error <= self.rec_threshold:
            self.PL_reliability = 1 
        else: 
            self.PL_reliability = 0
        
        # Update AL if previous action was selected by CL or AL
        if self.layer_chosen == "C" or self.layer_chosen == "A":  
            self.AL.update_estimator(self.previous_couplet, prototype, self.current_reward)
        
        # Get the action chosen by AL
        self.a_action, self.a_entropy = self.AL.advance(prototype)    
        
        # Get the action chosen by CL
        self.c_action, self.c_entropy = self.CL.advance(prototype) 
        
        # ACTION SELECTION PHASE 
        # Choose CL action if reconstruction error is smaller than reconstruction threshold AND if there is content in the CL's memory
        if self.rec_error <= self.rec_threshold and len(self.CL.LTM[2]) > self.minimum_memory: 
            if len(self.CL.LTM[2]) >= self.CL.nl: # LTM is full
                if self.AL.entropy < self.CL.entropy and self.AL.entropy > 0:
                    self.action_chosen = self.a_action
                    self.CL_activity = 0
                    self.layer_chosen = "A"
                    print ("AL action: ", self.action_chosen)
                else:
                    self.action_chosen = self.c_action
                    self.CL_activity = 1
                    self.layer_chosen = "C"
                    print ("CL action: ", self.action_chosen)                   
        else:
            self.action_chosen = self.r_action
            self.CL_activity = 0
            self.layer_chosen = "R"
            print ("RL action: ", self.action_chosen)

        # Store couplet for next update of STM and LTM based on next reward
        self.previous_couplet = [prototype, self.action_chosen] 
        self.steps.append(self.action_chosen)

        # Publish discrete action
        self.publish_msg(map_action(self.action_chosen)) 
        
        # Log episodes' info
        with open(filename, "a", newline="") as csv_file:
            csv_writer = csv.DictWriter(csv_file, fieldnames=['Episode', 'Reward', 'r_action', 'c_action', 'a_action', 'c_entropy', 'a_entropy', 'CL_activity', 'Action', 'rec_err', 'PL_reliability']) 
            csv_writer.writerow({'Episode': eps_count, 'Reward': self.current_reward, 'r_action': self.r_action, 'c_action': self.c_action, 'a_action': self.a_action, 'c_entropy': self.c_entropy, 'a_entropy': self.a_entropy, 'CL_activity': self.CL_activity, 'Action': self.action_chosen, 'rec_error': self.rec_error, 'PL_reliability': self.PL_reliability})
        
        # Restart episode after 10,000 timesteps
        current_t = round(time.time() - time_init)
        if current_t == next_t:
            print("Restarting episode...")
            self.reset_eps()
            eps_count += 1
            self.AL.update_policy(eps_count)  # Update AL policy
            next_t = current_t + 1000  
        
        # End simulation after 10,000 episodes
        if eps_count >= 100:
            self.CL.save_LTM()  # Save LTM
            self.PL.save_model()  # Save autoencoder
            rospy.signal_shutdown("Done 10,000 episodes!")
        
        self.r.sleep()   
    
    def reset_eps(self):   
        # Stop the robot
        self.publish_msg(map_action(8))
        
        # Go back to starting point by inverting steps
        for step in self.steps:
            self.action_chosen = self.RL.invert(step)
            self.publish_msg(map_action(self.action_chosen))
            
        # Go back to starting point by position
        #self.action_chosen = self.RL.return_home(self.robot_x, self.robot_y, self.robot_angle, self.range_c, self.range_l, self.range_r)
        #self.publish_msg(map_action(self.action_chosen))
        
        self.publish_msg(map_action(8))
            
        # Restart memory and variables
        self.CL.reset_STM()
        self.CL.reset_sequential_bias() 
        self.init_var()
        
    def init_var(self):
        # Initialize actions and rewards
        self.CL_activity = 0
        self.action_chosen = 0
        self.layer_chosen = "R"
        self.r_action = 0
        self.c_action = 0 
        self.a_action = 0
        self.c_entropy = 0
        self.a_entropy = 0
        self.current_reward = 0       
        self.steps = []
        self.rec_error = 1000    
        self.PL_reliability = 0
        
        # Get robot's orientation and coordinates
        self.robot_x = 0.
        self.robot_y = 0.
        self.robot_angle = 0.  
        self.range_c = 0
        self.range_l = 0
        self.range_r = 0

    def publish_msg(self, action):
        self.msg_action = discrete_action()
        self.msg_action.robot_id = "170" # check the correct robot ID
        self.msg_action.action = action
        self.pub_action.publish(self.msg_action)
            
def main(args):
    # Initialize ROS node
    rospy.init_node("dac_ml_agent", anonymous=False)
    print("Initializing DAC-ML agent...")
    agent = Agent()
    
    try:
        rospy.spin()
    except KeyboardInterrupt:
        print("Shutting down ROS DAC-ML module")
        agent.publish_msg("stop")
        pass

if __name__ == '__main__':
    main(sys.argv)
    
    
