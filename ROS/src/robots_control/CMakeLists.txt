cmake_minimum_required(VERSION 3.0.2)
project(robots_control)

## Compile as C++11, supported in ROS Kinetic and newer
 add_compile_options(-std=c++11)

find_package(catkin REQUIRED COMPONENTS
  roscpp
  rospy
  std_msgs
)

## Generate added messages and services with any dependencies listed here
 generate_messages(
   DEPENDENCIES
   std_msgs
  )

catkin_package(
  CATKIN_DEPENDS 
  roscpp
  rospy 
)


