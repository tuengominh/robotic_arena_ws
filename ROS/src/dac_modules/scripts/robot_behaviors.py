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
        # Moving forward at a random direction 
        print("Exploring...") 
        self.action = random.randint(0,2)            
        return self.action
        
class AvoidObstacle:
    def __init__(self):
        self.action = 8
        
    def avoid(self, c, l, r):
        print("Avoiding...")
        range_c = c
        range_l = l
        range_r = r
        
        if range_c < 65 or range_l < 65 or range_r < 65:
           if range_r < range_c and range_r < range_l:
               self.action = 4  
           elif range_l < range_c and range_l < range_c:
               self.action = 5    
        elif range_l < 135 or range_r < 135:
           if range_r < range_c and range_r < range_l:
               self.action = 6  
           elif range_l < range_c and range_l < range_c:
               self.action = 7  
        else:
            self.action = 1 if range_r < range_l else 2
                
        return self.action

class CatchTarget:
    def __init__(self):
        self.action = 8

    def catch(self, dist, pos, l, r):
        print("Catching target...")         
        if pos >= 0 and abs(dist - l) <= 10:  # if target is detected on the LEFT
            self.action = 6 if dist <= 65 else 1 
        elif pos < 0 and abs(dist - r) <= 10:  # if target is detected on the RIGHT
            self.action = 7 if dist <= 65 else 2           
        return self.action

class AvoidTarget:
    def __init__(self):
        self.action = 8

    def flee(self, dist, pos, l, r):
        print("Avoiding target...")
        if pos >= 0 and abs(dist - l) <= 10:  # if target is detected on the LEFT
            if dist < r:  # target is closer than obstacle
                self.action = 7 if dist <= 65 else 2 
            else:
                self.action = 1
        elif pos < 0 and abs(dist - r) <= 10:  # if target is detected on the RIGHT
            if dist < l:  # target is closer than obstacle
                self.action = 6 if dist <= 65 else 1 
            else:
                self.action = 2     
        return self.action
      
class GoPosition:
    def __init__(self):
        self.action = 8 
        
    def go_to_position(self, robot_x, robot_y, angle, target_x, target_y):   
        if robot_x - target_x < 0.5 and robot_y - target_y < 0.5:  # if the robot is already at the destination location
            print("Arrived to location: ", target_x, ", ", target_y)
            self.action = 8        

        else:
            # theta_dot is the degree of rotation needed by the robot to face the destination
            theta_dot = self.calculate_theta_dot(angle, self.calculate_dest_theta(robot_x, robot_y, target_x, target_y))
            self.action = self.rotate(theta_dot)
        
        return self.action

    def rotate(self, theta_dot):
        action = 0
        if theta_dot == 0:
            action = 0  # FORWARD
        elif theta_dot > 0:
            action = 6  # LEFT
        elif theta_dot < 0:
            action = 7  # RIGHT
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
        
