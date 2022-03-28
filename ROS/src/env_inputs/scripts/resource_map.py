#!/usr/bin/env python3
import sys, time
import rospy
import cv2
import numpy as np
import json
from utils import *
from std_msgs.msg import Float32MultiArray, String
from robots_msg.msg import resource

food_markerIds = ["47"] # List all markers used as food
water_markerIds = ["48", "49"] # List all markers used as water
robot_markerId = "3"

'''
    Receive robot's coordinates to check collision 
    Remove consumed resources from allocentric map 
    Send resource impact to reactive controllers
    TODO: implement gradients
'''

class ResourceMap(object):
    def __init__(self): 
        # Subscribe to the arena tracking system and robot's camera
        self.sub_arena_coor = rospy.Subscriber("/arena/coordinates", String, self.arena_coor_callback, queue_size=1)

        # Publish to ROS topics 
        self.pub_res = rospy.Publisher("/arena/resource", resource, queue_size=1) 
        self.r = rospy.Rate(10)
        
        # Define variables
        self.robot_x = 0.
        self.robot_y = 0.
        self.current_f_coors = {}
        self.current_w_coors = {}     

    def arena_coor_callback(self, rosdata):
        global robot_markerId, food_markerIds, water_markerIds
        coor_msg = json.loads(rosdata.data)
        
        # Get updated robot's coordinates
        robot_coordinates = coor_msg[str(robot_markerId)]  
        self.robot_x, self.robot_y, robot_z = convert_coors(robot_coordinates[2], robot_coordinates[0], robot_coordinates[1])
        
        # Get updated resources' coordinates
        self.current_f_coors = self.get_res_coors(coor_msg, food_markerIds)
        self.current_w_coors = self.get_res_coors(coor_msg, water_markerIds)
    
        self.check_collision()
        self.r.sleep()
    
    def get_res_coors(self, coors, ids): 
        coor_dict = {}
        # Deactivate irrelevant markers and previously removed resources   
        for key, value in coors.items():
            if str(key) in ids:
                coor_dict[str(key)] = value                     
        return coor_dict
        
    def check_collision(self):
        global food_markerIds, water_markerIds
        consumed = False
        
        for key_f in self.current_f_coors: 
            f_coordinates = self.current_f_coors[str(key_f)]
            res_x_f, res_y_f, res_z_f = convert_coors(f_coordinates[2], f_coordinates[0], f_coordinates[1])
            
            if abs(self.robot_x - res_x_f) < 0.5 and abs(self.robot_y - res_y_f) < 0.5:
                # Deactivate resources in case of collision
                food_markerIds.remove(str(key_f))    
                # Send resource information
                self.publish_msg(str(key_f), "FOOD", 0.2)
                consumed = True
        
        for key_w in self.current_w_coors:
            w_coordinates = self.current_w_coors[str(key_w)]
            res_x_w, res_y_w, res_z_w = convert_coors(w_coordinates[2], w_coordinates[0], w_coordinates[1])
            
            if abs(self.robot_x - res_x_w) < 0.2 and abs(self.robot_y - res_y_w) < 0.2:
                # Deactivate resources in case of collision
                water_markerIds.remove(str(key_w))       
                # Send resource information
                self.publish_msg(str(key_w), "WATER", 0.2)
                consumed = True
        
        if not consumed:
            self.publish_msg("", "", 0.)
   
    def publish_msg(self, res_id, res_type, impact):
        self.res_msg = resource() 
        self.res_msg.id = res_id
        self.res_msg.type = res_type
        self.res_msg.impact = impact
        print(self.res_msg)
        self.pub_res.publish(self.res_msg)

def main(args):
    # Initialize ROS node 
    rospy.init_node("resource_map", anonymous=True)
    print("Initializing environment class...")
    res_map = ResourceMap()      
    try:
        rospy.spin()
    except KeyboardInterrupt:
        print("Shutting down ROS environment module")
    cv2.destroyAllWindows()

if __name__ == '__main__':
    main(sys.argv)


