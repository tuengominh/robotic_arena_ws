#!/usr/bin/env python3
import rospy
import sys
import time
import numpy as np
import json
from utils import *
#sys.path.append("./DAC/")
from reactive_layer import ReactiveLayerAllostatic as RL
from std_msgs.msg import String
from robots_msg.msg import target, resource, discrete_action

step_count = 0
eps_count = 1
next_t_eps = 10000
time_init = time.time()
filename = "/home/robotics20/robotic_arena_ws/ROS/src/dac_modules/experiment_data_allostatic.csv" 
robot_markerId = 3

class Agent(object):
    def __init__(self):
        global filename   
        self.N = 2 # number of homeostatic systems      
        self.RL = RL(agent_type=0)  # 0 - constant weighting factor, 1 - interoceptive, 2 - exteroceptive
        
        # Internal parameters
        self.dVs = np.full(self.N, 0.8)  # np.array([0.7, 0.8, 0.9])
        self.decays = np.full(self.N, 0.00001)  # np.array([0.00001, 0.00002, 0.00001])
        self.impacts = np.zeros(self.N)  
        self.init_var()   
 
        # Subscribe to ROS topics
        self.sub_dist = rospy.Subscriber("/eco/perception", target, self.obj_callback, queue_size=1)   
        self.sub_coor = rospy.Subscriber("/arena/coordinates", String, self.coor_callback, queue_size=1)
        self.sub_angle = rospy.Subscriber("/arena/angles", String, self.angle_callback, queue_size=1)
        self.sub_res = rospy.Subscriber("/arena/resource", resource, self.allostasis, queue_size=1)
        # TODO: include gradients
            
        # Publish to ROS topics
        self.pub_action = rospy.Publisher("/eco/discrete_action", discrete_action, queue_size=1) 
        self.r = rospy.Rate(10)    
        
        # Log data to CSV
        print("Logging data to CSV file...")
        # TODO:

    def init_var(self):
        self.aVs = np.ones(self.N) 
        self.Us = np.zeros(self.N)         
        self.stress = np.zeros((self.N, 1000))  # accumulate stress after 1,000 timesteps
        self.ALs = np.zeros(self.N)
        self.Ks = np.ones(self.N)  # np.array([0.7, 0.8, 0.9])
        self.Ds = np.zeros(self.N) 
        self.nS = np.zeros(self.N)
        
        self.targets = np.array([None, None])
        self.targets_x = np.array([None, None]) 
        self.targets_y = np.array([None, None])    
        
        self.action = 0      
        self.steps = []
        
        # Get robot's orientation and coordinates
        self.robot_x = 0.
        self.robot_y = 0.
        self.robot_angle = 0. 
        self.range_c = 0
        self.range_l = 0
        self.range_r = 0     
        
    def obj_callback(self, rosdata):
        self.range_c = rosdata.range_c  # laser sensor
        self.range_l = rosdata.range_l  # left ir sensor
        self.range_r = rosdata.range_r  # right ir sensor
        
        n_food = rosdata.n_food  # number of food detected
        n_water = rosdata.n_water  # number of water detected
        self.nS[0] = n_food
        self.nS[1] = n_water
        
        # TODO: multiple target for each resources
        self.targets = np.array([int(rosdata.target_food), int(rosdata.target_water)])
    
    def coor_callback(self, rosdata):
        global robot_markerId
        coor_msg = json.loads(rosdata.data)  
        
        # Get robot's coordinates
        robot_coordinates = coor_msg[str(robot_markerId)]  
        self.robot_x, self.robot_y, robot_z = convert_coors(robot_coordinates[2], robot_coordinates[0], robot_coordinates[1])
        
        # Get targets' coordinates
        for i in len(self.targets):
            tar_coordinates = coor_msg[str(self.targets[i])]  
            self.targets_x[i], self.targets_y[i], target_z = convert_coors(tar_coordinates[2], tar_coordinates[0], tar_coordinates[1])          
    
    def angle_callback(self, rosdata):
        global robot_markerId
        angle_msg = json.loads(rosdata.data)   
        self.robot_angle = angle_msg[str(robot_markerId)]
    
    def allostasis(self, rosdata):
        global step_count
        res_type = rosdata.type
        res_impact = rosdata.impact 
        
        # Refresh stress array every 1,000 timesteps
        if step_count == 1000:
            self.stress = np.zeros((self.N, 1000))
            step_count = 0   
        
        # Update aVs
        if res_type == "FOOD":
            self.impacts[0] = res_impact
        elif res_type == "WATER":
            self.impacts[1] = res_impact
                
        self.aVs = max(min(self.aVs + self.impacts - self.decays, 1.0), 0.1)    
 
        # Calculate and store drive intensities    
        self.Us = self.RL.homeostasis(self.dVs, self.aVs, self.Us)   
        for i in len(self.Us):
            self.stress[i, step_count] = self.Us[i]
        
        # Apply lowpass filter and calculate allostatic load  
        for i in len(self.stress):  
            self.stress[i] = self.RL.butter_lowpass_filter(self.stress[i], 0.2, 100, 3)
            self.ALs[i] = self.RL.calculate_AL(self.stress[i])

        # Modify weighting factors and calculate drives
        self.Ks, self.Ds = self.RL.allostasis(self.Ks, self.Ds, self.ALs, self.Us, self.nS)
  
        # Select action based on the strongest drive
        self.step(self.Ds.index(max(self.Ds)))
        
        # Refresh impact for the next timestep
        self.impacts = np.zeros(self.N)
        step_count += 1
        
    def step(self, max_drive):
        global eps_count, next_t_eps, time_init
      
        # Get the action chosen by RL
        self.action = self.RL.pos_step(str(self.targets_x[max_drive]), str(self.targets_y[max_drive]), self.robot_x, self.robot_y, self.robot_angle, self.range_c, self.range_l, self.range_r)
        
        # Publish discrete action
        self.publish_msg(map_action(self.action)) 
        
        # Log episodes' info
        # TODO:
        
        # Restart episode after 10,000 timesteps
        current_t = round(time.time() - time_init)
        if current_t == next_t_eps:
            print("Restarting episode...")
            self.reset_eps()
            eps_count += 1
            next_t_eps = current_t + 10000  
        
        # End simulation after 10 episodes
        if eps_count >= 10:
            rospy.signal_shutdown("Done 10 episodes!") 
            
        self.r.sleep()  
    
    def reset_eps(self):   
        # Stop the robot
        self.publish_msg(map_action(8))
        
        # Go back to starting point by inverting steps
        for step in self.steps:
            self.action = self.RL.invert(step)
            self.publish_msg(map_action(self.action))
            
        # Go back to starting point by position
        #self.action = self.RL.return_home(self.robot_x, self.robot_y, self.robot_angle, self.range_c, self.range_l, self.range_r)
        #self.publish_msg(map_action(self.action))
        
        self.publish_msg(map_action(8))
        self.init_var()   
    
    def publish_msg(self, action):
        self.msg_action = discrete_action()
        self.msg_action.robot_id = "170" # check the correct robot ID
        self.msg_action.action = action
        self.pub_action.publish(self.msg_action)
            
def main(args):
    # Initialize ROS node
    rospy.init_node("allostatic_agent", anonymous=False)
    print("Initializing allostatic agent...")
    agent = Agent()
    
    try:
        rospy.spin()
    except KeyboardInterrupt:
        print("Shutting down ROS allostatic module")
        agent.publish_msg("stop")
        pass

if __name__ == '__main__':
    main(sys.argv)
    
    
