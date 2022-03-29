# ROS workspace #

### Install Rosserial: ###

The ESP8266 boards generate ROS nodes for the robots using the Rosserial library, publish data from the sensors, and receive the motor instructions.

- `sudo apt-get install ros-noetic-rosserial`
- `sudo apt-get install ros-noetic-rosserial-arduino`

or clone [rosserial](https://github.com/ros-drivers/rosserial) repository.

### Build the workspace and connect robot nodes: ###

- Source the workspace: `source devel/setup.bash`
- Build the workspace: `catkin_make -DPYTHON_EXECUTABLE=/usr/bin/python3`
- Generate `roscore` and run single scripts: `rosrun package_name file_name.py` 
- Run experiments via **.launch** files in the **dac_experiments/launch** folder: `roslaunch package_name file_name.launch`

Find more information [here.](http://wiki.ros.org/ROS/Tutorials/CreatingPackage)


