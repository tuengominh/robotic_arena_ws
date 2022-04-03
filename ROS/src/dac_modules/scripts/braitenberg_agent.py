#!/usr/bin/env python3
import rospy
import sys
import json
from utils import *
#sys.path.append("./DAC/")
from reactive_layer import ReactiveLayer as RL
from robots_msg.msg import target, discrete_action

'''
    Braitenberg agent with basic reactive controller 
    Performing random exploration while avoiding obstacles continously
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
        range_c = rosdata.range_c
        range_l = rosdata.range_l
        range_r = rosdata.range_r 
        self.action = self.RL.rand_step(range_c, range_l, range_r)

        ''' 
            Uncomment these lines to implement a cue following agent 
        '''
        #targ_id, targ_dist, targ_x = self.find_target(rosdata.targs_dist, rosdata.targs_x)
        #self.action = self.RL.catch_step(targ_id, targ_dist, targ_x, range_c, range_l, range_r)
        
        # Publish discrete action
        self.publish_msg(map_action(self.action))
        self.r.sleep() 
    
    def find_target(self, dist_str, x_str):
        targ_id = "" 
        targ_dist = None
        targ_x = None
    
        if dist_str != "{}" and x_str != "{}":  # there is marker detected
            targs_dist = json.loads(dist_str)
            targs_x = json.loads(x_str)
            # Only get the first marker detected
            targ_id = str(list(targs_dist.keys())[0]) 
            targ_dist = targs_dist[targ_id]
            targ_x = targs_x[targ_id]
            
        return targ_id, targ_dist, targ_x
    
    def publish_msg(self, action):
        self.msg_action = discrete_action()
        self.msg_action.robot_id = "170"  # check the correct robot ID
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
    
    
