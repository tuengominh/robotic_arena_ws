#!/usr/bin/env python3
import rospy
import sys
from robots_class import EcoRobot
from robots_msg.msg import discrete_action

eco_version = "eco00"  # check the correct version used
eco = EcoRobot(eco_version) 
cont_eco = 0

'''
    Send instructions to the robot's actuators based on discrete action
    TODO: Actuators controllers for Tanke and Armpap robots
    TODO: Instructions based on ad-sign, h-sign
'''

class RobotController(object):
    def __init__(self):
        # Subscribe to ROS topics
        self.sub = rospy.Subscriber("/eco/discrete_action", discrete_action, self.control_robot, queue_size=1)
        
        self.r = rospy.Rate(10)

    # Call function to publish instructions to the robot
    def control_robot(self, rosdata):
        global cont_eco
        aux = ""        
        
        ''' inst (10) 
            left wheel's direction (2 : forward, 1 : backward, 0 : stop)
            right wheel's direction (2 : forward, 1 : backward, 0 : stop)
            left wheel's speed (200..250)
            right wheel's speed (200..250)
            delay (0..255, *50ms)
        '''
        
        if rosdata.action == "FORWARD":
            aux = eco.inst(10,2,2,200,200)   
            print("Control " + eco_version + " forward")
            cont_eco = 0

        elif rosdata.action == "BACKWARD":
            aux = eco.inst(10,1,1,200,200,15) 
            print("Control " + eco_version + " backward")
            cont_eco = 0

        elif rosdata.action == "LEFT":
            aux = eco.inst(10,1,2,200,200,15)
            print("Control " + eco_version + " left")
            cont_eco = 0

        elif rosdata.action == "RIGHT":
            aux = eco.inst(10,2,1,200,200,15)
            print("Control " + eco_version + " right")
            cont_eco = 0

        elif rosdata.action == "FORWARD_LEFT":
            aux = eco.inst(10,2,2,200,255,15)
            print("Control " + eco_version + " forward left")
            cont_eco = 0

        elif rosdata.action == "FORWARD_RIGHT":
            aux = eco.inst(10,2,2,255,200,15)
            print("Control " + eco_version + " forward right")
            cont_eco = 0

        elif rosdata.action == "BACKWARD_RIGHT":
            aux = eco.inst(10,1,1,255,200,15)
            print("Control " + eco_version + " backward right")
            cont_eco = 0

        elif rosdata.action == "BACKWARD_LEFT":
            aux = eco.inst(10,1,1,200,255,15)
            print("Control " + eco_version + " backward left")
            cont_eco = 0 

        elif rosdata.action == "STOP":
            aux = eco.inst(10,1,1,0,0,10)
            print("Control " + eco_version + " stop")
            cont_eco = 0 

        else:
            cont_eco = cont_eco + 1
            print(cont_eco)
            if cont_eco > 2:
                aux = eco.inst(9)
                print(aux)
                cont_eco = 0
        
        self.r.sleep()
                
def main(args):
    # Initialize ROS node
    rospy.init_node("eco_controller", anonymous=False)
    print("Initializing motor controller module...")
    robot_controller = RobotController() 
    try:
        rospy.spin()
    except KeyboardInterrupt:
        print("Shutting down ROS motor controller module")
        eco.inst(10,1,1,0,0,10)
        pass

if __name__ == '__main__':
    main(sys.argv)
    

