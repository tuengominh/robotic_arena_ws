#!/usr/bin/env python3
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

# Check the correct camera IP address
ip_camera = "http://192.168.0.121/capture"  # eco00
#ip_camera = "http://192.168.0.128/capture"  # eco01
#ip_camera = "http://192.168.0.120/capture"  # eco02

'''
    Capture the egocentric images from robot's camera and send them compressed via ROS
    Send coordinates of targets tracked by robot's camera
'''

def send_image(out_frame):
    global pub_image
      
    # Reshape captured images to (84,84,3) before sending
    image = reshape_image(out_frame) 

    # Publish compressed images
    img_msg = CompressedImage()
    img_msg.header.stamp = rospy.Time.now()
    img_msg.format = "jpeg"   
    img_msg.data = np.array(cv2.imencode(".jpg", image)[1]).tostring()   
    pub_image.publish(img_msg)

def reshape_image(img): 
    scale_percent = 84/240  # check size of input images
    dim = (int(img.shape[0] * scale_percent), int(img.shape[0] * scale_percent))
    image = cv2.resize(img, dim, interpolation = cv2.INTER_AREA) 
    return image  

if __name__ == '__main__':
    # Initialize ROS node 
    rospy.init_node("m5_opencv_camera", anonymous=True) 
    r = rospy.Rate(10)  # 10Hz
    
    # Publish to ROS topics 
    pub_image = rospy.Publisher("/eco/images", CompressedImage, queue_size=1) 
    pub_coor = rospy.Publisher("/eco/coordinates", String, queue_size=1)
    #pub_coor = rospy.Publisher("/eco/coordinates", Float32MultiArray, queue_size=1)
    
    #coor_msg = Float32MultiArray()
    #coor_msg.layout.dim.append(MultiArrayDimension())
    #coor_msg.layout.dim[0].label = "coordinates"
    #coor_msg.layout.dim[0].size = 3
    #coor_msg.layout.dim[0].stride = 1
    #coor_msg.layout.data_offset = 0
    
    # Set up ArucoDetect and VideoCapture 
    aruco = ArucoDetect(cv2.aruco.DICT_4X4_100, 20, 297)  # weight of the fiducial = 20mm; distance = 297mm
    q = Queue()
    video_capture = VideoCapture(ip_camera, "m5_opencv_camera") 
    Thread(target=video_capture.get, args=(q,)).start()
    Thread(target=video_capture.show, args=(q,)).start()
    print("Done starting M5 camera!")
    
    while not rospy.is_shutdown():
        if video_capture.get_stopped or video_capture.show_stopped:
            video_capture.stop()
            break
            
        frame = video_capture.frame
        #frame = q.get()
        
        if frame is not None:
            # Publish compressed images captured by the robot
            send_image(frame)
            
            # Detect coordinates of targets  
            frame, coordinates = aruco.detect_coordinates(frame) 

            #video_capture.frame = frame   

            # Parse coordinates dictionary as JSON string        
            coor_msg = json.dumps(coordinates, allow_nan = True)
            #print("Coordinates: ", targ_msg)
            
            # Publish coordinates tracked by robot's camera
            pub_coor.publish(coor_msg)    
            #if all(x != y for x,y in zip(coordinates, (0.0,0.0,0.0))):
            #    coor_msg.data = [coordinates[0], coordinates[1], coordinates[2]]
            #    pub_coor.publish(coor_msg)
        
        r.sleep()    
              
