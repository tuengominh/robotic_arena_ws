cmake_minimum_required(VERSION 3.0.2)
project(robots_msg)

find_package(
  catkin REQUIRED COMPONENTS
  sensor_msgs
  std_msgs
  genmsg
  message_generation 
)

## Generate messages in the 'msg' folder
 add_message_files(
   FILES
   eco_msgs.msg
   tanke_msgs.msg
   armpap_msgs.msg
   jevois.msg
   lidar.msg
   camera.msg
   motor.msg
   plat.msg
   target_data.msg
   discrete_action.msg
   resource.msg
  )

## Generate added messages and services with any dependencies listed here
 generate_messages(
   DEPENDENCIES
   std_msgs
  )

catkin_package(
  # INCLUDE_DIRS include
  CATKIN_DEPENDS
  message_runtime 
)




