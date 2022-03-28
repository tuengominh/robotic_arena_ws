import numpy as np

'''
    TODO: fixed vs. dynamic PV/SST ratio
'''

class Attractor(object):	
    def __init__(self):
        self.dt = 0.001
        self.N = 9  # number of populations
        
        # Couplings
        self.we = np.ones(self.N) * 5  # self-excitation      
        self.wsi = 4
        self.wmi = 4
        
        self.q = 0.2  # ACh level - 0 corresponds to shared inhibition and 1 to mutual inhibition
        self.var = 15  # initial arbitrary variance
        self.tau = 0.02  # time decay constant
        
        self.I = np.ones(self.N) * (-100)  # external inputs
        self.U = np.zeros(self.N)  # initial state
        
        # Activation function
        self.a = 1/22
        self.thr = 15
        self.fmax = 40		

    def sigmoid(self, x):
        return self.fmax / (1 + np.exp(-self.a * (x - self.thr)))
    
    # Return array y as the right hand side of the modified Wilson-Cowan equation
    def WilsonCowan(self, I):
        y = (-self.U + self.sigmoid(self.we * self.U - self.q * self.wmi * (np.dot(np.abs(np.identity(self.N) - 1), self.U)) - (1 - self.q) * self.wsi * self.sigmoid(np.sum(self.U)) + I) + np.random.normal(0, 1, self.N) * self.var) / self.tau
        return y

    def advance(self, I, time):
        for t in np.arange(time):
            y = self.WilsonCowan(I)
            self.U += y * self.dt
            
            # ReLU correction
            self.U *= self.U > 0
        return self.U

    def reset(self):
        self.U = np.zeros(self.N)
        
