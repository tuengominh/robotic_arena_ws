import random
import math
from utils import *

'''
    Behavior repertoire with actions' parameters
    0 : "forward"
    1 : "forward_left"
    2 : "forward_right"
    3 : "backward"
    4 : "backward_left"
    5 : "backward_right"
    6 : "left"
    7 : "right"
    8 : "stop"
    TODO: Discrete action based on h-sign, ad-sign
'''

class RandomExplore:
    def __init__(self):
        self.action = 8
        
    def explore(self):
        print("Exploring...")  
        # Moving forward at a random direction  
        self.action = random.randint(0,2)            
        return self.action
        
class AvoidObstacle:
    def __init__(self):
        self.action = 8
        
    def avoid(self, range_c, range_l, range_r):
        self.range_c = range_c
        self.range_l = range_l
        self.range_r = range_r
        
        # Near obstacles - Hard turning
        if self.range_c < 100 or self.range_l < 100 or self.range_r < 100:
           print("Avoiding near...")
           if self.range_r < self.range_c and self.range_r < self.range_l:
               self.action = 4  # BACKWARD_LEFT
           elif self.range_l < self.range_c and self.range_l < self.range_c:
               self.action = 5  # BACKWARD_RIGHT
           else:
               self.action = 3  # BACKWARD
                
        # Far obstacles - Soft turning
        else:
            print("Avoiding far...")
            if self.range_r < self.range_l:
                self.action = 6  # LEFT
            else:
                self.action = 7  # RIGHT
                
        return self.action

class CatchTarget:
    def __init__(self):
        self.action = 8

    def catch(self, pos, targ_dist):        
        if pos == "LEFT":         
            self.action = 6  if targ_dist <= 30 else 1         
        elif pos == "RIGHT":
            self.action = 7 if targ_dist <= 30 else 2   
            
        print("Catching target: ", self.action)          
        return self.action

class AvoidTarget:
    def __init__(self):
        self.action = 8

    def flee(self, pos, targ_dist):   
        if pos == "LEFT":
            self.action = 7  if targ_dist <= 30 else 2         
        elif pos == "RIGHT":
            self.action = 6 if targ_dist <= 30 else 1             
        return self.action
        
class GoPosition:
    def __init__(self):
        self.action = 8 
        
    def go_to_position(self, robot_x, robot_y, angle, target_x, target_y):   
        if robot_x - target_x < 0.5 and robot_y - target_y < 0.5:  # if the robot is already at the destination location
            print("Arrived home!")
            self.action = 8        
        else:
            # theta_dot is the degree of rotation needed by the robot to face the destination
            theta_dot = self.calculate_theta_dot(angle, self.calculate_dest_theta(robot_x, robot_y, target_x, target_y))
            self.action = self.rotate(theta_dot)
        
        return self.action

    def rotate(self, theta_dot):
        action = 0
        if theta_dot == 0:
            action = 0  # forward
        elif theta_dot > 0:
            action = 6  # left
        elif theta_dot < 0:
            action = 7  # right
        return action	   
    
    def calculate_dest_theta(self, x1, y1, x2, y2):  
        return math.degrees(math.atan2(y2 - y1, x2 - x1))
    
    def calculate_theta_dot(self, angle, dest_theta):
        theta_dot = dest_theta - angle
        if (theta_dot > 180):
            theta_dot = -(360 - theta_dot)
        elif (theta_dot < -180):
            theta_dot = (360 + theta_dot)
        return theta_dot

class InvertStep:
    def __init__(self):
        self.action = 8 
    
    # Invert the previous step    
    def invert(self, step):
        if step == 0:
            self.action = 3  
        elif step == 1:
            self.action == 5
        elif step == 2:
            self.action = 4
        elif step == 3:
            self.action = 0
        elif step == 4:
            self.action = 2
        elif step == 5:
            self.action = 1
        elif step == 6:
            self.action = 7
        elif step == 7:
            self.action = 6
        elif step == 8:
            self.action = 8 
        return self.action
       
        
