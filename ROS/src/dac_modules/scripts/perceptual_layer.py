import os
import numpy as np
import tensorflow as tf
import keras as keras
from tensorflow.keras.layers import Input, Conv2D, MaxPooling2D, UpSampling2D, Flatten, Dense, Reshape
from tensorflow.keras.models import Model, load_model
from tensorflow.keras.optimizers import RMSprop

model_path = "/home/robotics20/robotic_arena_ws/ROS/src/dac_modules/model/"

class PerceptualLayer(object):
    def __init__(self, prototype_length=20, frozen_weights=False, offline=True, model_ver=0):
        self.visual = ConvoAutoencoder(pl=prototype_length, offline=offline, model_ver=model_ver)
        self.reconstructed_img = np.zeros((84,84,3))
        self.count_batch = 0
        #self.stored_imgs = []
        self.reconstruct_error = 100
        self.batch_size = 16
        self.pl = prototype_length
        self.frozen = frozen_weights
        if self.frozen:
            self.freeze_model()
        
    def advance(self, img): 
        #self.stored_imgs.append(img)
        self.count_batch += 1

        if self.count_batch == self.batch_size:
            self.reconstruct_error = self.visual.update(img, self.batch_size)
            self.count_batch = 0
            #self.stored_imgs.clear()   
    
    def get_prototype(self, img):
        prototype = self.visual.encode(img)
        return prototype

    def get_reconstructed_img(self, img):
        self.reconstructed_img = self.visual.reconstruct_img(img)
        return self.reconstructed_img

    def get_reconstruct_error(self):
        return self.reconstruct_error

    def save_model(self):
        self.visual.save_model()

    def load_model(self, indx):
        self.visual.load_model(indx)

    def freeze_model(self):
        self.visual.freeze_model()

    def unfreeze_model(self):
        self.visual.unfreeze_model()        

'''
    Convolutional autoencoder as visual processing of the agent 
    Using autoencoder trained offline 
'''
        
class ConvoAutoencoder:
    def __init__(self, shape=(84,84,3), pl=20, offline=True, model_ver=0):
        self.img_shape = shape
        self.encoder = 0
        self.decoder = 0
        self.pl = pl
        
        self.autoencoder = self.build_model()
        optimizer = RMSprop(learning_rate=0.0005)
        self.autoencoder.compile(loss="mse", optimizer=optimizer)
       
        if offline:
            self.autoencoder = self.load_model(model_ver)
        
        self.autoencoder.summary()

    def build_model(self):
        input_img = Input(shape=self.img_shape)
        filter_size = (3, 3)
        pooling_size = (2, 2)

        x = Conv2D(16, filter_size, activation="relu", padding="same")(input_img)
        x = MaxPooling2D(pooling_size, padding="same")(x)
        x = Conv2D(32, filter_size, activation="relu", padding="same")(x)
        x = MaxPooling2D(pooling_size, padding="same")(x)
        x = Conv2D(32, filter_size, activation="relu", padding="same")(x)
        x = MaxPooling2D(pooling_size, padding="same")(x)
        x = Flatten()(x)
        #x = Dense(200)(x)
        encoded = Dense(self.pl, activation="relu")(x)
        self.encoder = Model(input_img, encoded)

        decoder_input = Input(shape=(self.pl,))
        #x = Dense(200)(decoder_input)
        x = Dense(11*11*32)(decoder_input)
        x = Reshape((11, 11, 32))(x) 
        x = Conv2D(32, filter_size, activation="relu", padding="same")(x)
        x = UpSampling2D(pooling_size)(x)
        x = Conv2D(32, filter_size, activation="relu", padding="same")(x)
        x = UpSampling2D(pooling_size)(x)
        x = Conv2D(16, filter_size, activation="relu")(x)
        x = UpSampling2D(pooling_size)(x)       
        decoded = Conv2D(3, filter_size, activation="relu", padding="same")(x)
        self.decoder = Model(decoder_input, decoded)

        auto_input = Input(shape=self.img_shape)
        encoded = self.encoder(auto_input)
        decoded = self.decoder(encoded)
        autoencoder = Model(auto_input, decoded)

        return autoencoder

    '''
    def update(self, img, batch_size):
        reconstruct_error = self.autoencoder.fit(img, img, epochs=1, batch_size=batch_size, verbose=0).history['loss'][-1]
        return reconstruct_error
    '''

    def update(self, img, batch_size):
        assert self.autoencoder.trainable == False
        reconstruct_error = self.autoencoder.evaluate(img, img, batch_size=batch_size, verbose=0)
        return reconstruct_error

    def encode(self, img):
        prototype = self.encoder.predict([img])[0]
        return prototype

    def decode(self, prototype):
        img = self.decoder.predict([[prototype]])[0]
        return img

    def reconstruct_img(self, img):
        reconstructed_img = self.autoencoder.predict([img])[0]
        return reconstructed_img
        
    def save_model(self):
        global model_path
        self.autoencoder.save(model_path + "autoencoders_p" + str(self.pl) + ".h5")

    def load_model(self, indx):
        global model_path  
        file_path = os.path.abspath(model_path + "autoencoder_p" + str(self.pl) + "_v" + str(indx) + ".h5")
        
        if os.path.exists(file_path):
            self.autoencoder = load_model(model_path + "autoencoder_p" + str(self.pl) + "_v" + str(indx) + ".h5")
            print("Autoencoder loaded.")            
        else:
            print("File does not exist.")

    def freeze_model(self):
        self.autoencoder.trainable = False
        self.autoencoder.summary()

    def unfreeze_model(self):
        self.autoencoder.trainable = True        


