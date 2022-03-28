#!/usr/bin/env python3
import sys, time
import rospy
import cv2
import csv
import numpy as np
import json
from utils import *
from sensor_msgs.msg import CompressedImage
from std_msgs.msg import Int8, String

path_folder_rb = "/home/robotics20/robotic_arena_ws/ROS/src/cameras_control/robot_captures/"  # folder to save images from robot's camera
path_folder_npy = "/home/robotics20/robotic_arena_ws/ROS/src/cameras_control/robot_captures_npy/"
filename = "/home/robotics20/robotic_arena_ws/ROS/src/cameras_control/data/img_coor_data.csv"  # CSV file pairing images and coordinates data
img_count_rb = 0  # initialize to keep the previous captures from robot's camera
robot_markerId = "3"

'''
    Save compressed images and coordinates from the robot's camera and arena tracking system
    TODO: send batch info to train autoencoder online
'''

class ImageReceiver:
    def __init__(self): 
        global filename  

        # Subscribe to ROS topics
        self.sub_robot_cam = rospy.Subscriber("/eco/images", CompressedImage, self.robot_cam_callback, queue_size=1)
        self.sub_arena_cam = rospy.Subscriber("/arena/images", CompressedImage, self.arena_cam_callback, queue_size=1)
        self.sub_arena_coor = rospy.Subscriber("/arena/coordinates", String, self.arena_coor_callback, queue_size=1)
        self.r = rospy.Rate(10)
        
        self.image_np_rb = None  # compressed images from robot's camera
        self.image_np_arn = None  # compressed images from arena's tracking camera 
        self.x_center = 0.
        self.distance_camera = 0.
        self.z_floor = 0.
        self.cX = 0. 
        self.cY = 0. 
        self.cZ = 0.

        # Create CSV file pairing images and coordinates data
        print("Logging data to CSV file...")
        with open(filename, "w", encoding="UTF8") as csv_file:
            csv_writer = csv.DictWriter(csv_file, fieldnames=['Timestamp', 'Image', 'x_center', 'distance_camera', 'z_floor', 'CoordinateX', 'CoordinateY', 'CoordinateZ']) 
            csv_writer.writeheader()

    def robot_cam_callback(self, rosdata):
        global img_count_rb, path_folder_rb, path_folder_npy
        
        np_arr = np.fromstring(rosdata.data, np.uint8)
        self.image_np_rb = cv2.imdecode(np_arr, cv2.IMREAD_COLOR)

        # Save received images as .png
        image_v_rb = cv2.flip(self.image_np_rb, 0)
        cv2.imwrite(path_folder_rb + str(img_count_rb) + ".png", image_v_rb)
        
        # Save received images as .npy
        img_npy_rb = cv2.cvtColor(image_v_rb, cv2.COLOR_BGR2RGB)
        np.save(path_folder_npy + str(img_count_rb) + ".npy", img_npy_rb) 
      
        # Log images and coordinates data in CSV file
        self.log_data()
   
        # Stop running after 10,000 images
        if img_count_rb >= 10000:
            rospy.signal_shutdown("Done 10,000 images!") 
               
        img_count_rb += 1
        self.r.sleep()       
    
    def arena_cam_callback(self, rosdata):
        np_arr = np.fromstring(rosdata.data, np.uint8)
        self.image_np_arn = cv2.imdecode(np_arr, cv2.IMREAD_COLOR)
        image_v_arn = cv2.flip(self.image_np_arn, 0)
            
    def arena_coor_callback(self, rosdata):
        global robot_markerId
        
        coor_msg = json.loads(rosdata.data)
        coordinates = coor_msg[robot_markerId]
        
        self.x_center = coordinates[0]
        self.distance_camera = coordinates[1]
        self.z_floor = coordinates[2]       
        
        # Convert coordinates data
        # TODO: calibrate better
        self.cX, self.cY, self.cZ = convert_coors(self.z_floor, self.x_center, self.distance_camera)  
    
    def log_data(self):
        global filename, img_count_rb
        
        with open(filename, "a", newline="") as csv_file:
            csv_writer = csv.DictWriter(csv_file, fieldnames=['Timestamp', 'Image', 'x_center', 'distance_camera', 'z_floor', 'CoordinateX', 'CoordinateY', 'CoordinateZ'])
            csv_writer.writerow({'Timestamp': round(time.time()), 'Image': img_count_rb, 'x_center': round(self.x_center, 2), 'distance_camera': round(self.distance_camera, 2), 'z_floor': round(self.z_floor, 2), 'CoordinateX': round(self.cX, 2), 'CoordinateY': round(self.cY, 2), 'CoordinateZ': round(self.cZ, 2)})

def main(args):
    # Initialize ROS node 
    rospy.init_node("image_receiver", anonymous=True)
    print("Initializing image receiver...")
    ir = ImageReceiver()      
    try:
        rospy.spin()
    except KeyboardInterrupt:
        print("Shutting down ROS image receiver module")
    cv2.destroyAllWindows()

if __name__ == '__main__':
    main(sys.argv)


