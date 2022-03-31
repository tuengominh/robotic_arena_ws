#!/usr/bin/env python3
import sys
import rospy
import json
from std_msgs.msg import String
from robots_msg.msg import eco_msgs, target, resource

food_markerIds = ["47"]  # list all markers used as food
water_markerIds = ["48", "49"]  # list all markers used as water

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
        self.targ_id = ""  
        self.targ_type = ""
        self.targ_dist = 0
        self.targ_x = 0
   
    # Receive sensor data
    def dist_callback(self, rosdata): 
        self.dist = rosdata.range_c  # laser sensor
        self.left_sensor = rosdata.range_l  # left ir sensor
        self.right_sensor = rosdata.range_r  # right ir sensor
        #print("Left: ", self.left_sensor, "Right: ", self.right_sensor)
        
    # Ignore resources in case of collision
    def coll_callback(self, rosdata):
        global food_markerIds, water_markerIds        
        res_id = rosdata.id
        res_type = rosdata.type
        #print("Collided resource: ", res_id, "Type: ", res_type)
     
        if res_type == "FOOD":
            food_markerIds.remove(str(res_id))
        elif res_type == "WATER":
            water_markerIds.remove(str(res_id))
            
    # TODO: send info about multiple targets  
    def cam_callback(self, rosdata):
        global food_markerIds, water_markerIds
        
        coor_msg = json.loads(rosdata.data)
        targets = list(coor_msg.keys())

        if len(targets) != 0:  # at least 1 marker is detected       
            if len(targets) == 1:  # only 1 marker is detected
                self.targ_id = str(targets[0]) 
                self.targ_dist = coor_msg[self.targ_id][1]
                self.targ_x = coor_msg[self.targ_id][0]
                
                if self.targ_id in food_markerIds:
                    self.n_food += 1
                elif self.targ_id in water_markerIds:
                    self.n_water += 1
         
            else: # more than 1 markers are detected
                chosen_target = str(targets[0])
                current_dist = coor_msg[chosen_target][1]

                for target in targets: 
                    # Count number of resources detected
                    if str(target) in food_markerIds:
                        self.n_food += 1
                    elif str(target) in water_markerIds:
                        self.n_water += 1
                        
                    # Only choose the closest target
                    if coor_msg[str(target)][1] < current_dist:  
                        chosen_target = str(target)
                        current_dist = coor_msg[chosen_target][1]    
                    
                self.targ_id = chosen_target 
                self.targ_dist = coor_msg[self.targ_id][1]
                self.targ_x = coor_msg[self.targ_id][0]
                
                if self.targ_id in food_markerIds:
                    self.targ_type = "FOOD"
                elif self.targ_id in water_markerIds:
                    self.targ_type = "WATER"
                    
        #print("Target: ", self.targ_id, self.targ_type, self.targ_dist, self.targ_x)
        self.publish_msg(self.dist, self.left_sensor, self.right_sensor, self.n_food, self.n_water, self.targ_id, self.targ_type, self.targ_dist, self.targ_x)
        
        self.init_var()
        self.r.sleep()

    def publish_msg(self, dist, left_sensor, right_sensor, n_food, n_water, targ_id, targ_type, targ_dist, targ_x):
        self.msg = target()
        self.msg.range_c = dist
        self.msg.range_l = left_sensor
        self.msg.range_r = right_sensor
        self.msg.n_food = n_food
        self.msg.n_water = n_water
        self.msg.targ_id = targ_id
        self.msg.targ_type = targ_type
        self.msg.targ_dist = targ_dist
        self.msg.targ_x = targ_x
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
    
