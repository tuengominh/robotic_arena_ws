# ROS packages #

## exps_launch ##

- Includes **.launch** files for different experimental tasks
- Make sure to include the correct robots and ROS nodes in the **.launch** files
- The **random_explore.launch** file include communication params for all available robots

## robots_msg ##

- Configuration for all ROS messages 
- Make sure to include all **.msg** and **.srv** files in **CMakeList.txt** and **package.xml**
- In case of adding or modifying **.msg** and **.srv** files, rebuild the workspace: `catkin_make -DPYTHON_EXECUTABLE=/usr/bin/python3`

## robots_ctrl ##

- Publishes sensor signals from robots
- Sends motor instructions to robots
- Dictionary for communication setups of all robots can be found in **robots_class.py**

## cameras_ctrl ##

- Captures and saves images from all cameras
- Make sure to use the correct IPs for cameras in **robots_capture.py** and **arena_capture.py**

## env_inputs ##

- Environment classes for non-gradient and gradient navigation
- Make sure to modify paths to image and data folders in **image_receiver.py**
- Make sure to update list of used ArUco markers in **eco_reader.py** and **resource_map.py**

## dac_modules ##

- Implements all DAC cognitive modules and behavior repertoire
- Includes agents that integrate inputs and select actions 
- Make sure to modify paths to image and data folders in **autoencoder.ipynb**, **perceptual_layer.py** and **contextual_layer.py**


