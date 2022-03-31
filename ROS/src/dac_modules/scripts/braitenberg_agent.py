#!/usr/bin/env python3
import rospy
import sys
from utils import *
#sys.path.append("./DAC/")
from reactive_layer import ReactiveLayer as RL
from robots_msg.msg import target, discrete_action

'''
    Braitenberg agent with random reactive controller 
    Performing exploration while avoiding obstacles continously
'''

class Agent(object):
    def __init__(self):
        # Initialize random reactive layer
        self.RL = RL()
        self.action = 8
        
        # Subscribe to ROS topics
        self.sub_dist = rospy.Subscriber("/eco/perception", target, self.dist_callback, queue_size=1)
        
        # Publish to ROS topics
        self.pub_action = rospy.Publisher("/eco/discrete_action", discrete_action, queue_size=1)   
           
        self.r = rospy.Rate(10)  # 10Hz

    def dist_callback(self, rosdata):
        # Receive sensor data 
        range_c = rosdata.range_c # laser sensor
        range_l = rosdata.range_l # left ir sensor
        range_r = rosdata.range_r # right ir sensor 
        
        self.action = self.RL.rand_step(range_c, range_l, range_r)
        
        # Publish discrete action
        self.publish_msg(map_action(self.action))
        self.r.sleep()
           
    def publish_msg(self, action):
        self.msg_action = discrete_action()
        self.msg_action.robot_id = "170" # check the correct robot ID
        self.msg_action.action = action
        print(self.msg_action.action)
        self.pub_action.publish(self.msg_action)

def main(args):
    # Initialize ROS node
    rospy.init_node("braitenberg_agent", anonymous=False)
    print("Initializing braitenberg agent...")
    agent = Agent()
    
    try:
        rospy.spin()
    except KeyboardInterrupt:
        print("Shutting down ROS reactive controller module")
        agent.publish_msg("stop")
        pass

if __name__ == '__main__':
    main(sys.argv)
    
    
