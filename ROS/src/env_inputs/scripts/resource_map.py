#!/usr/bin/env python3
import sys
import rospy
import cv2
import json
from utils import *
from std_msgs.msg import String
from robots_msg.msg import resource, robot_pose

food_markerIds = ["47"]  # list all markers used as food
water_markerIds = ["48", "49"]  # list all markers used as water
robot_markerId = "3"

'''
    Receive robot's coordinates to check collision 
    Remove consumed resources from allocentric map and send info to agents
    TODO: implement gradients
'''

class ResourceMap(object):
    def __init__(self): 
        # Subscribe to the arena tracking system and robot's camera
        self.sub_arn_angle = rospy.Subscriber("/arena/angles", String, self.arn_angle_callback, queue_size=1)
        self.sub_arn_coor = rospy.Subscriber("/arena/coordinates", String, self.arn_coor_callback, queue_size=1)

        # Publish to ROS topics 
        self.pub_pos = rospy.Publisher("/arena/robot_pose", robot_pose, queue_size=1)
        self.pub_res = rospy.Publisher("/arena/resource", resource, queue_size=1)  

        self.r = rospy.Rate(10)  # 10Hz
        
        # Robot's coordinates and orientation info
        self.robot_x = 0.
        self.robot_y = 0.
        self.robot_angle = 0.

        # Dynamic maps of resources
        self.current_f_coors = {}
        self.current_w_coors = {}     

    def arn_angle_callback(self, rosdata):
        global robot_markerId
        angle_msg = json.loads(rosdata.data)
        self.robot_angle = angle_msg[robot_markerId]

    def arn_coor_callback(self, rosdata):
        global robot_markerId, food_markerIds, water_markerIds
        coor_msg = json.loads(rosdata.data)
        
        # Get updated robot's coordinates and publish
        robot_coordinates = coor_msg[robot_markerId]  
        self.robot_x, self.robot_y, robot_z = convert_coors(robot_coordinates[2], robot_coordinates[0], robot_coordinates[1])
        self.publish_pos_msg(self.robot_x, self.robot_y, self.robot_angle)
        
        # Get updated resources' coordinates
        self.current_f_coors = self.get_res_coors(coor_msg, food_markerIds)
        self.current_w_coors = self.get_res_coors(coor_msg, water_markerIds)
    
        # Check collision and publish relevant data 
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
                self.publish_res_msg(str(key_f), "FOOD", 0.2)
                consumed = True
        
        for key_w in self.current_w_coors:
            w_coordinates = self.current_w_coors[str(key_w)]
            res_x_w, res_y_w, res_z_w = convert_coors(w_coordinates[2], w_coordinates[0], w_coordinates[1])
            
            if abs(self.robot_x - res_x_w) < 0.2 and abs(self.robot_y - res_y_w) < 0.2:
                # Deactivate resources in case of collision
                water_markerIds.remove(str(key_w))       
                # Send resource information
                self.publish_res_msg(str(key_w), "WATER", 0.2)
                consumed = True
        
        if not consumed:
            self.publish_res_msg("", "", 0.)
   
    def publish_pos_msg(self, x, y, angle):
        self.pos_msg = robot_pose() 
        self.pos_msg.robot_x = x
        self.pos_msg.robot_y = y
        self.pos_msg.robot_angle = angle
        #print(self.pos_msg)
        self.pub_pos.publish(self.pos_msg)

    def publish_res_msg(self, res_id, res_type, impact):
        self.res_msg = resource() 
        self.res_msg.id = res_id
        self.res_msg.type = res_type
        self.res_msg.impact = impact
        #print(self.res_msg)
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


