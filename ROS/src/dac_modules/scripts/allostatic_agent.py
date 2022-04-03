#!/usr/bin/env python3
import rospy
import sys
import time
import numpy as np
import json
import csv
from utils import *
#sys.path.append("./DAC/")
from reactive_layer import ReactiveLayerAllostatic as RL
from std_msgs.msg import String
from robots_msg.msg import target, resource, discrete_action, robot_pose

step_count = 0
eps_count = 1
next_t = 10000
time_init = time.time()
filename = "/home/robotics20/robotic_arena_ws/ROS/src/dac_modules/experiment_data_allostatic.csv" 

class Agent(object):
    def __init__(self):
        global filename  
         
        self.N = 2  # number of homeostatic systems      
        self.RL = RL(agent_type=0, nS=self.N)  # 0 - constant weighting factor, 1 - interoceptive, 2 - exteroceptive
        self.init_var()   
 
        # Subscribe to ROS topics
        self.sub_pose = rospy.Subscriber("/arena/robot_pose", robot_pose, self.pose_callback, queue_size=1) 
        self.sub_dist = rospy.Subscriber("/eco/perception", target, self.targ_callback, queue_size=1)   
        self.sub_coor = rospy.Subscriber("/arena/coordinates", String, self.coor_callback, queue_size=1)
        self.sub_res = rospy.Subscriber("/arena/resource", resource, self.allostasis, queue_size=1)  
        # TODO: include gradients
            
        # Publish to ROS topics
        self.pub_action = rospy.Publisher("/eco/discrete_action", discrete_action, queue_size=1) 
        self.r = rospy.Rate(10)  # 10Hz    
        
        # Log data to CSV
        print("Logging data to CSV file...")
        with open(filename, "w", encoding="UTF8") as csv_file:
            csv_writer = csv.DictWriter(csv_file, fieldnames=['Time', 'dVEnergy', 'aVEnergy', 'UHunger', 'kHunger', 'ALHunger', 'DHunger', 'dVWater', 'aVWater', 'UThirst', 'kThirst', 'ALThirst', 'DThirst', 'NFood', 'NWater']) 
            csv_writer.writeheader()

    def init_var(self):      
        self.action = 0
        
        # Get robot's orientation and coordinates
        self.robot_x = 0.
        self.robot_y = 0.
        self.robot_angle = 0.  
        
        # Get sensor data
        self.range_c = 0
        self.range_l = 0
        self.range_r = 0     
        
        # Get target data
        self.targs_id = np.full(self.N, "")
        self.targs_x = np.full(self.N, None)
        self.targs_y = np.full(self.N, None)
        self.targs_dist = np.full(self.N, None)
        self.targs_pos = np.full(self.N, None)
        self.impacts = np.zeros(self.N)
        self.nR = np.zeros(self.N)
        
    def pose_callback(self, rosdata):
        self.robot_x = rosdata.robot_x
        self.robot_y = rosdata.robot_y
        self.robot_angle = rosdata.robot_angle 
    
    def targ_callback(self, rosdata):
        self.range_c = rosdata.range_c  # laser sensor
        self.range_l = rosdata.range_l  # left ir sensor
        self.range_r = rosdata.range_r  # right ir sensor
        self.nR[0] = rosdata.n_food  # number of food detected
        self.nR[1] = rosdata.n_water  # number of water detected  
        self.find_target(rosdata.targs_type, rosdata.targs_dist, rosdata.targs_x)
    
    def find_target(self, type_str, dist_str, x_str):
        if dist_str != "{}" and x_str != "{}":  # there is target detected
            targs_type = json.loads(type_str)
            targs_dist = json.loads(dist_str)
            targs_pos = json.loads(x_str)
            
        for key, value in targs_type:
            if value == "FOOD":  # there is food detected
                self.targs_id[0] = str(key)
                self.targs_dist[0] = targs_dist[str(key)]
                self.targs_pos[0] = targs_pos[str(key)]
            elif value == "WATER":  # there is water detected
                self.targs_id[1] = str(key)
                self.targs_dist[1] = targs_dist[str(key)]
                self.targs_pos[1] = targs_pos[str(key)]
        
    def coor_callback(self, rosdata):
        coor_msg = json.loads(rosdata.data)
        for i in len(self.targs_id):
            if self.targs_id[i] != "" and self.targs_id[i] in coor_msg:  # there is target detected in both systems
                targ_coordinates = coor_msg[self.targs_id[i]]  
                self.targs_x[i], self.targs_y[i], target_z = convert_coors(targ_coordinates[2], targ_coordinates[0], targ_coordinates[1])            
   
    def allostasis(self, rosdata):
        global step_count
        res_type = rosdata.type
        res_impact = rosdata.impact 

        if res_type == "FOOD":
            self.impacts[0] = res_impact
        elif res_type == "WATER":
            self.impacts[1] = res_impact 
        
        # Refresh stress array every 1,000 timesteps
        if step_count == 1000:
            self.stress = np.zeros((self.N, 1000))
            step_count = 0   

        # Homeostasis mechanism    
        self.RL.homeostasis(self.impacts, step_count)
        
        # Allostasis mechanism  
        drives = self.RL.allostasis(self.nR)
  
        # Select action based on the strongest drive
        self.step(drives.index(max(drives)))
        step_count += 1
        
    def step(self, max_drive):
        global eps_count, next_t, time_init, filename
      
        # Get the action chosen by RL based on target's coordinates
        #self.action = self.RL.pos_step(self.targs_x[max_drive], self.targs_y[max_drive], self.robot_x, self.robot_y, self.robot_angle, self.range_c, self.range_l, self.range_r)
        
        # Get the action chosen by RL based on detected targets
        self.action = self.RL.catch_step(self.targs_id[max_drive], self.targs_dist[max_drive], self.targs_pos[max_drive], self.range_c, self.range_l, self.range_r)
        
        # Publish discrete action
        self.publish_msg(map_action(self.action)) 
        
        # Log episodes' info
        with open(filename, "a", newline="") as csv_file:
            csv_writer = csv.DictWriter(csv_file, fieldnames=['Time', 'dVEnergy', 'aVEnergy', 'UHunger', 'kHunger', 'ALHunger', 'DHunger', 'dVWater', 'aVWater', 'UThirst', 'kThirst', 'ALThirst', 'DThirst', 'NFood', 'NWater']) 
            csv_writer.writerow({'Time': round(time.time()), 'dVEnergy': self.RL.dVs[0], 'aVEnergy': self.RL.aVs[0], 'UHunger': self.RL.Us[0], 'kHunger': self.RL.Ks[0], 'ALHunger': self.RL.ALs[0], 'DHunger': self.RL.Ds[0], 'dVWater': self.RL.dVs[1], 'aVWater': self.RL.aVs[1], 'UThirst': self.RL.Us[1], 'kThirst': self.RL.Ks[1], 'ALThirst': self.RL.ALs[1], 'DThirst': self.RL.Ds[1], 'NFood': self.nR[0], 'NWater': self.nR[1]})
        
        # Restart episode after 10,000 timesteps
        current_t = round(time.time() - time_init)
        if current_t == next_t:
            print("Restarting episode...")
            self.reset_eps()
            eps_count += 1
            next_t = current_t + 10000  
        
        # End simulation after 1,000 episodes
        if eps_count >= 1000:
            rospy.signal_shutdown("Done 1,000 episodes!") 
            
        self.init_var()
        self.r.sleep()  
    
    def reset_eps(self):   
        # Stop the robot
        self.publish_msg(map_action(8))
            
        # Go back to starting point by position
        self.action_chosen = self.RL.return_home(self.robot_x, self.robot_y, self.robot_angle, self.range_c, self.range_l, self.range_r)
        self.publish_msg(map_action(self.action_chosen))

        # Reset internal parameters    
        self.RL.reset_params(self.N)  
    
    def publish_msg(self, action):
        self.msg_action = discrete_action()
        self.msg_action.robot_id = "170"  # check the correct robot ID
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
    
    
