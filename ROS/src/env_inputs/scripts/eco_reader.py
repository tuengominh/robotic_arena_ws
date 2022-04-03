#!/usr/bin/env python3
import sys
import time
import rospy
import json
from utils import *
from std_msgs.msg import String
from robots_msg.msg import eco_msgs, target, resource

robot_markerId, food_markerIds, water_markerIds = init_markers()
eps_count = 1
next_t = 10000
time_init = time.time()

'''
    Read sensor/camera data and detect position of obstacles or targets 
    Ignore consumed resources and keep track of resources detected
    TODO: implement gradients    
'''

class RobotReader(object):
    def __init__(self):
        # Subscribe to ROS topics
        # TODO: subscribe to gradients 
        self.sub_dist = rospy.Subscriber("/eco00/pub_msg", eco_msgs, self.dist_callback, queue_size=1) 
        self.sub_coll = rospy.Subscriber("/arena/resource", resource, self.coll_callback, queue_size=1)
        self.sub_targ = rospy.Subscriber("/eco/coordinates", String, self.cam_callback, queue_size=1) 
       
        # Publish to ROS topics
        self.pub = rospy.Publisher("/eco/perception", target, queue_size=1)   
        self.r = rospy.Rate(10)  # 10Hz

        # Initialize target variables
        self.init_var()
        self.n_food = 0
        self.n_water = 0

    def init_var(self):
        self.targs_type = {}
        self.targs_dist = {}
        self.targs_x = {}
            
    # Receive sensor data
    def dist_callback(self, rosdata): 
        self.dist = rosdata.range_c  # laser sensor
        self.left_sensor = rosdata.range_l  # left ir sensor
        self.right_sensor = rosdata.range_r  # right ir sensor
        #print("Left: ", self.left_sensor, "Right: ", self.right_sensor)
        
    def coll_callback(self, rosdata):
        global food_markerIds, water_markerIds, eps_count, next_t, time_init        
        res_id = rosdata.id
        res_type = rosdata.type
        #print("Collided resource: ", res_id, "Type: ", res_type)
     
        # Ignore resources in case of collision
        if res_type == "FOOD":
            food_markerIds.remove(str(res_id))
        elif res_type == "WATER":
            water_markerIds.remove(str(res_id))
        
        # Reactivate markers after 10,000 timesteps
        current_t = round(time.time() - time_init)
        if current_t == next_t:
            init_markers() 
            eps_count += 1
            next_t = current_t + 10000
            
    def cam_callback(self, rosdata):
        global food_markerIds, water_markerIds
        
        self.coor_msg = json.loads(rosdata.data)
        #targets = [*self.coor_msg.keys()]
        targets = list(self.coor_msg.keys())[0]
        targets_f = []
        targets_w = []
        
        # Count number of resources detected
        if len(targets) > 0: 
            for target in targets:      
                if str(target) in food_markerIds:
                    targets_f.append(str(target))
                    self.n_food += 1
                elif str(target) in water_markerIds:
                    targets_w.append(str(target))
                    self.n_water += 1
        
        # Only choose the closest target if more than 1 markers are detected
        self.find_target(targets_f, "FOOD") 
        self.find_target(targets_w, "WATER")

        self.publish_msg(self.dist, self.left_sensor, self.right_sensor, self.n_food, self.n_water, self.targs_type, self.targs_dist, self.targs_x)
        
        self.init_var()
        self.r.sleep()

    def find_target(self, targs, targ_type):
        if len(targs) > 0:  # at least 1 marker is detected
            chosen_target = str(targs[0])
            current_dist = self.coor_msg[chosen_target][1]

            if len(targs) > 1:  
                for t in targs:
                    if self.coor_msg[str(t)][1] < current_dist:  
                        chosen_target = str(t)
                        current_dist = self.coor_msg[chosen_target][1]   
                
            self.targs_type[chosen_target] = targ_type
            self.targs_dist[chosen_target] = current_dist
            self.targs_x[chosen_target] = self.coor_msg[chosen_target][0]  
            
    def publish_msg(self, dist, left_sensor, right_sensor, n_food, n_water, targs_type, targs_dist, targs_x):
        self.msg = target()
        self.msg.range_c = dist
        self.msg.range_l = left_sensor
        self.msg.range_r = right_sensor
        self.msg.n_food = n_food
        self.msg.n_water = n_water
        self.msg.targs_type = json.dumps(targs_type, allow_nan = True)
        self.msg.targs_dist = json.dumps(targs_dist, allow_nan = True)
        self.msg.targs_x = json.dumps(targs_x, allow_nan = True)
        self.pub.publish(self.msg)

def main(args):
    # Initialize ROS node
    rospy.init_node("eco_reader", anonymous=False)
    print("Initializing sensor reader module...")
    robot_reader = RobotReader()
    try:
        rospy.spin()
    except KeyboardInterrupt:
        print("Shutting down ROS sensor reader module")
        pass

if __name__ == '__main__':
    main(sys.argv)
    
