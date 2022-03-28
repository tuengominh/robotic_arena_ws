#!/usr/bin/env python3
import os
import rospy
import cv2
import numpy as np
import json
from aruco import ArucoDetect
from video_capture import VideoCapture
from threading import Thread
from queue import Queue
from std_msgs.msg import Float32MultiArray, MultiArrayDimension, String
from sensor_msgs.msg import CompressedImage 

id_camera = 0  # check the correct device ID in the terminal 
robot_markerId = "3"  # check the correct marker ID 

'''
    Capture allocentric images of the whole arena and send them compressed via ROS 
    Track and send coordinates of the agent
    Send coordinates to check collision and remove resources in case of non-gradient envs 
    Send coordinates to update local views and ad-sign, h-sign in case of gradient envs 
'''

def send_image(out_frame):
    global pub_image
    img_msg = CompressedImage()
    img_msg.header.stamp = rospy.Time.now()
    img_msg.format = "jpeg"
    img_msg.data = np.array(cv2.imencode(".jpg", out_frame)[1]).tostring()
    pub_image.publish(img_msg)

if __name__ == '__main__':
    # Initialize ROS node
    rospy.init_node("arena_camera", anonymous=True)
    r = rospy.Rate(10)
    
    # Publish to ROS topics 
    pub_image = rospy.Publisher("/arena/images", CompressedImage, queue_size=1)
    pub_coor = rospy.Publisher("/arena/coordinates", String, queue_size=1)
    pub_angle = rospy.Publisher("/arena/angles", String, queue_size=1)
    
    # Set up VideoCapture
    aruco = ArucoDetect(cv2.aruco.DICT_4X4_100, 20, 297)  # weight of the fiducial = 20mm; distance = 297mm
    q = Queue()
    video_capture = VideoCapture(id_camera, "arena_camera", True)  # set True in case of normal camera
    Thread(target=video_capture.get, args=(q,)).start()
    Thread(target=video_capture.show, args=(q,)).start()
    print("Done starting arena camera!")

    while not rospy.is_shutdown():
        if video_capture.get_stopped or video_capture.show_stopped:
            video_capture.stop()
            break
            
        frame = video_capture.frame
        #frame = q.get()
        
        if frame is not None:
            # Publish compressed images 
            send_image(frame)
            
            # Detect coordinates
            #print("Detected markers: ", aruco.detect_ids(frame))
            frame, coordinates = aruco.detect_coordinates(frame)
            if not robot_markerId in coordinates.keys():
                coordinates[robot_markerId] = (0.0,0.0,0.0)
            
            # Detect orientation    
            frame, angles = aruco.detect_orientation(frame)
            if not robot_markerId in angles.keys():
                angles[robot_markerId] = 0.0
                
            #video_capture.frame = frame
            
            coor_msg = json.dumps(coordinates, allow_nan = True)
            angle_msg = json.dumps(angles, allow_nan = True)
            #print("Coordinates: ", coor_msg)
            #print("Orientation: ", angle_msg)
            
            # Publish coordinates and orientation tracked by the tracking system
            pub_coor.publish(coor_msg)
            pub_angle.publish(angle_msg)
            
        r.sleep()
       
           
                    
                
