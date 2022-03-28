import sys
import numpy as np
from utils import *
from scipy.signal import butter, lfilter
from robot_behaviors import AvoidObstacle, RandomExplore, CatchTarget, AvoidTarget, GoPosition, InvertStep
from attractor import Attractor

'''
    Grandparent random RL class 
'''

class ReactiveLayer(object):
    def __init__(self):
        # Initialize used behaviors
        self.explorer = RandomExplore()
        self.avoider = AvoidObstacle() 
        self.inverter = InvertStep()  
        self.traveler = GoPosition()  
        self.catcher = CatchTarget()
        self.fleer = AvoidTarget()
        self.action = 8
        self.th = 250
        self.home_x = 402
        self.home_y = 32

    def rand_step(self, range_c, range_l, range_r):
        if range_c < self.th or range_l < self.th or range_r < self.th:
            self.action = self.avoider.avoid(range_c, range_l, range_r)
        else:             
            self.action = self.explorer.explore()    
        return self.action

    def pos_step(self, target_x, target_y, robot_x, robot_y, angle, range_c, range_l, range_r):
        if range_c < self.th or range_l < self.th or range_r < self.th:
            self.action = self.avoider.avoid(range_c, range_l, range_r)           
        elif target_x is not None or target_y is not None:
            self.action = self.traveler.go_to_position(robot_x, robot_y, angle, target_x, target_y)      
        else:      
            self.action = self.explorer.explore()                            
        return self.action
        
    # TODO: clean code
    def catch_step(self, targ_id, targ_dist, targ_x, range_c, range_l, range_r):
        if targ_id == "" and range_c < self.th or range_l < self.th or range_r < self.th:
            self.action = self.avoider.avoid(range_c, range_l, range_r)
        elif targ_id != "" and targ_x >= 0 and abs(targ_dist - range_l) <= 10:  # if target is detected on the LEFT
            self.action = self.catcher.catch("LEFT", targ_dist)
        elif targ_id != "" and targ_x < 0 and abs(targ_dist - range_r) <= 10 : # if target is detected on the RIGHT
            self.action = self.catcher.catch("RIGHT", targ_dist) 
        else:
            self.action = self.explorer.explore()
        return self.action
        
    def flee_step(self, targ_id, targ_dist, targ_x, range_c, range_l, range_r):
        if range_c < self.th or range_l < self.th or range_r < self.th:
            if targ_id == "":  # no target detected
                self.action = self.avoider.avoid(range_c, range_l, range_r)      
            elif targ_id != "" and targ_x > 0 and abs(targ_dist - range_l) <= 10 : # if target is detected on the LEFT
                if targ_dist < range_r:  # target is closer than obstacle
                    self.action = self.fleer.flee("LEFT", targ_dist)
                else:
                    self.action = self.avoider.avoid(range_c, range_l, range_r)
            elif targ_id != "" and targ_x < 0 and abs(targ_dist - range_r) <= 10 : # if target is detected on the RIGHT
                if targ_dist < range_l:  # target is closer than obstacle
                    self.action = self.fleer.flee("RIGHT", targ_dist)
                else:
                    self.action = self.avoider.avoid(range_c, range_l, range_r)     
        else:
            self.action = self.explorer.explore()               
        return self.action
        
    def invert(self, step):
        self.action = self.inverter.invert(step)
        return self.action
        
    def return_home(self, robot_x, robot_y, angle, range_c, range_l, range_r):
        self.action = self.pos_step(self.home_x, self.home_y, robot_x, robot_y, angle, range_c, range_l, range_r)
        return self.action

'''
    Parent allostatic RL class
    TODO: exteroceptive agent - track resources based on vision inputs 
'''

class ReactiveLayerAllostatic(ReactiveLayer):
    def __init__(self, agent_type=0):
        super().__init__() 
        self.type = agent_type  # 0 - constant weighting factor, 1 - interoceptive, 2 - exteroceptive
               
    # Check homeostatic states and calculate intensities |aV - dV|
    def homeostasis(self, dVs, aVs, Us):
        urgencies = Us    
        for i in len(urgencies):
            urgencies[i] = self.check_balance(aVs[i], dVs[i])
        return urgencies

    def check_balance(self, aV, min_dV):
        urgency = abs(min_dV - aV) if aV < min_dV else 0.0
        return urgency
       
    def calculate_AL(self, stress_arr):
        allo_load = max(np.mean(stress_arr), 0.0)
        return allo_load
        
    def allostasis(self, Ks, Ds, ALs, Us, nS): 
        weights = Ks
        drives = Ds
        nums_res = nS
         
        # Interoceptive adaptive agent
        if self.type == 1:
            weights = min(weights * (1 + ALs), 1.0)

        # Exteroceptive adaptive agent
        elif self.type == 2:
            for i in len(nums_res):
                nums_res[i] = map_val(nums_res[i], 0, 10000, 0, 100) if nums_res[i] <= 10000 else 100
                weights[i] = min(weights[i] * (1 + 1 / nums_res[i]), 1.0) if nums_res[i] > 0 else 1.0
        
        # Calculate drives
        drives = self.calculate_drive(Us, weights)                
        return weights, drives
        
    def calculate_drive(self, Us, weights):
        return Us * weights
        
    def butter_lowpass_filter(self, data, cutoff, fs, order=5):
        b, a = self.butter_lowpass(cutoff, fs, order=order)
        y = lfilter(b, a, data)
        return y
        
    def butter_lowpass(self, cutoff, fs, order=5):
        nyq = 0.5 * fs
        normal_cutoff = cutoff / nyq
        b, a = butter(order, normal_cutoff, btype="low", analog=False)
        return b, a
        
'''
    Child allostractor RL class 
    TODO: fixed vs. dynamic PV/SST ratio
'''
class ReactiveLayerAllostractor(ReactiveLayerAllostatic):
    def __init__(self):
        super().__init__()
        self.attractor = Attractor()
        
    def calculate_drive(self, Us, weights):
        drives = self.attractor.advance(Us * weights, time=1) # time in sec
        self.attractor.reset()
        return drives
  
