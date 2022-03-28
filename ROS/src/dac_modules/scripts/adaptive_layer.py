import os
import numpy as np
from sklearn.linear_model import SGDRegressor

'''
    Q-Learning algorithm: Off-policy TD control. Finds the optimal greedy policy while following an epsilon-greedy policy
    
    Args:
        discount_factor: gamma discount factor
        alpha: TD learning rate
        epsilon: chance to sample a random action
    
    Returns:
        A tuple (Q, episode_lengths)
        Q is the optimal action-value function, a dictionary mapping state -> action values
'''
    
class AdaptiveLayer(object):
    def __init__(self, prototype, discount_factor=1.0, epsilon=0.0, epsilon_decay=1.0, action_space=9):        
        self.discount_factor = discount_factor
        self.epsilon = epsilon
        self.epsilon_decay = epsilon_decay
        
        self.action_space = action_space
        self.action = 0

        # Action-value function: a nested dictionary that maps state -> (action -> action - value)
        self.states = []
        self.policy_log = []
        self.entropy = 0.
        self.td_target = 0.
      
        self.estimator = Estimator(prototype, self.action_space)
        self.update_policy(1) 
    
    def update_policy(self, i_episode):
        self.policy = self.epsilon_greedy_policy(self.estimator, self.epsilon * self.epsilon_decay ** i_episode, self.action_space)
        
    '''
        Epsilon-greedy policy based on a given Q-function approximator and epsilon
        
        Args:
            estimator: returns q values for a given state
            epsilon: probability to select a random action 
            nA: number of actions in the environment
        
        Returns:
            A function that takes the observation as an argument and returns the probabilities for each action in the form of a numpy array of length nA
        
    '''
            
    def epsilon_greedy_policy(self, estimator, epsilon, nA):       
        def policy_fn(observation):
            A = np.ones(nA, dtype=float) * epsilon / nA
            q_values = estimator.predict(observation)
            best_action = np.argmax(q_values)
            A[best_action] += (1.0 - epsilon)
            return A, q_values
        return policy_fn

    def advance(self, prototype):
        greedy_action, q_values = self.policy(prototype)
        softmax_action = np.exp(q_values) / sum(np.exp(q_values))       
        self.calculate_entropy(softmax_action)
        self.action = np.random.choice(np.arange(len(softmax_action)), p=softmax_action)        
        return self.action, self.entropy

    def update_estimator(self, previous_couplet, prototype, reward):
        q_values_next = self.estimator.predict(prototype)       
        # Q-value TD target
        self.td_target = reward + self.discount_factor * np.max(q_values_next)
        self.estimator.update(previous_couplet[0], previous_couplet[1], self.td_target)
      
    def calculate_entropy(self, p):
        plog = np.log2(p)
        infs = np.where(np.isinf(plog))
        plog[infs] = 0.
        pplog = p*plog
        psum = -np.sum(pplog)
        self.entropy = psum
        
'''
    Value function approximator 
'''

class Estimator():
    def __init__(self, prototype, nA):
        # Create a separate model for each action 
        self.models = []        
        for _ in range(nA):
            model = SGDRegressor(learning_rate="constant")
            model.partial_fit([prototype], [0])
            self.models.append(model)
    
    '''
        Make value function predictions
        
        Args:
            s: state to make a prediction for
            a: (optional) action to make a prediction for
            
        Returns:
            If an action a is given this returns a single number as the prediction
            If no action is given this returns a vector or predictions for all actions in the environment where pred[i] is the prediction for action i
    '''
    def predict(self, prototype, a=None):
        features = prototype
        if not a:
            return np.array([m.predict([features])[0] for m in self.models])
        else:
            return self.models[a].predict([features])[0]
    
    '''
        Update the estimator parameters for a given state and action towards the target y
    '''
    def update(self, prototype, a, y):
        features = prototype
        self.models[a].partial_fit([features], [y])



