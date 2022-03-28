from threading import Thread
from queue import Queue
import cv2

'''
    Continuously get frames from a VideoCapture object with a dedicated thread
'''

class VideoCapture:
    def __init__(self, src=0, name="camera", norm=False):
        self.src = src
        self.name = name
        self.get_stopped = False
        self.show_stopped = False
        self.stream = cv2.VideoCapture(self.src)
        (self.grabbed, self.frame) = self.stream.read()
        self.sentinel = object()  # used to cleanly exit Threads
        self.norm = norm

    def get(self, out_q):
        while not self.get_stopped:
            if not self.norm:
                self.stream = cv2.VideoCapture(self.src)          
            if not self.grabbed:
                self.stop()
            else:
                (self.grabbed, self.frame) = self.stream.read()
            out_q.put(self.frame)
        out_q.put(self.sentinel)
        
    def show(self, in_q):
        while not self.show_stopped:
            frame = in_q.get()
            if frame is self.sentinel:
                in_q.put(self.sentinel)
                break
            cv2.imshow(self.name, frame)
            if cv2.waitKey(1) == ord("q"):
                self.stop()

    def stop(self):
        self.get_stopped = True
        self.show_stopped = True
        
 
