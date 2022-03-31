import cv2
import math

class ArucoDetect:
    def __init__(self, dictio=cv2.aruco.DICT_4X4_100, weight=72, distance=297):
        self.weight = weight  # weight of the fiducial: 72mm or 20mm 
        self.distance = distance 
        self.aruco_dict = cv2.aruco.Dictionary_get(dictio)
        self.parameters = cv2.aruco.DetectorParameters_create()
        self.corners = []
        self.ids = []
            
    def start(self, frame=None):
        self.frame = frame
        if self.frame is not None:
            self.corners, self.ids, self.rejectedImgPoints = cv2.aruco.detectMarkers(self.frame, self.aruco_dict, parameters=self.parameters)

    # Check IDs of all available markers
    def detect_ids(self, frame=None):
        self.start(frame)
        ids = []
        if len(self.corners) > 0:
            ids = self.ids.flatten()
        return ids
    
    # Check orientation (0.0..360.0) of all available markers
    def detect_orientation(self, frame=None):
        self.start(frame)
        self.angle_dict = {}
        
        if len(self.corners) > 0:
            ids = self.ids.flatten() 
            
            for (markerCorner, markerId) in zip(self.corners, ids):
                angle = 0
                corners = markerCorner.reshape((4,2)) 
                topLeft, topRight, bottomRight, bottomLeft = self.convert(corners) 
                
                cX = int((topLeft[0] + bottomRight[0]) / 2)
                cY = int((topLeft[1] + bottomRight[1]) / 2)
                tX = int((topLeft[0] + topRight[0]) / 2)
                tY = int((topLeft[1] + topRight[1]) / 2)  
                cv2.line(self.frame, (cX,cY), (tX,tY), (255,255,255), 2)
                cv2.circle(self.frame, (cX,cY), 4, (0,0,255), -1)   
                
                angle = math.degrees(math.atan2(cY - tY, cX - tX))
                if angle < 0:
                    angle = 360 + angle
                cv2.putText(frame, str(markerId) + ": " + str(angle), (topLeft[0] - 60, topLeft[1] - 16), cv2.FONT_HERSHEY_SIMPLEX, 0.5, (0,255,0), 2)
                self.angle_dict[str(markerId)] = angle
         
        return self.frame, self.angle_dict
    
    # Check X,Y,Z coordinates of all available markers    
    def detect_coordinates(self, frame=None):
        self.start(frame)
        self.coor_dict = {}

        if len(self.corners) > 0:
            ids = self.ids.flatten() 
            
            for (markerCorner, markerId) in zip(self.corners, ids):
                coordinates = (0.0,0.0,0.0)
                corners = markerCorner.reshape((4,2)) 
                topLeft, topRight, bottomRight, bottomLeft = self.convert(corners)
                
                cX = int((topLeft[0] + bottomRight[0]) / 2)
                cY = int((topLeft[1] + bottomRight[1]) / 2)         
                cv2.circle(self.frame, (cX,cY), 4, (0,0,255), -1)
                cv2.line(self.frame, topLeft, topRight, (0,255,0), 2) 
                cv2.line(self.frame, topRight, bottomRight, (0,255,0), 2)
                cv2.line(self.frame, bottomRight, bottomLeft, (0,255,0), 2)
                cv2.line(self.frame, bottomLeft, topLeft, (0,255,0), 2)
                
                distance_camera, focal_length = self.calculate_distance(topLeft, topRight, bottomLeft, bottomRight)
                
                z_floor_pixel = 120 - cY
                z_floor = (z_floor_pixel * distance_camera) / focal_length
                x_center_pixel = 160 - cX
                x_center = (x_center_pixel * distance_camera) / focal_length
                
                coordinates = (round(x_center, 2), round(distance_camera, 2), round(z_floor, 2))  
                cv2.putText(frame, str(markerId) + ": " + str(coordinates), (topLeft[0] - 60, topLeft[1] - 16), cv2.FONT_HERSHEY_SIMPLEX, 0.5, (0,255,0), 2)
                self.coor_dict[str(markerId)] = coordinates
                
        return self.frame, self.coor_dict
            
    # Calculate distance from the camera to the marker
    def calculate_distance(self, topLeft, topRight, bottomLeft, bottomRight):
        pixel_wtop = self.npixel(topLeft, topRight)
        pixel_wbottom = self.npixel(bottomLeft, bottomRight)
        pixel_hleft = self.npixel(topLeft, bottomLeft)
        pixel_hright = self.npixel(topRight, bottomRight)
        
        #rectangle = [pixel_wtop, pixel_wbottom, pixel_hleft, pixel_hright]
        #focal_length = self.calculate_focal_length(max(rectangle))
        #distance_camera = (focal_length * self.weight) / max(rectangle)
        
        focal_length = 237.6  # 243.4520575410848
        dis_cam_wtop = (focal_length * self.weight) / pixel_wtop
        dis_cam_wbot = (focal_length * self.weight) / pixel_wbottom
        dis_cam_hleft = (focal_length * self.weight) / pixel_hleft
        dis_cam_hright = (focal_length * self.weight) / pixel_hright 
        distance_camera = (dis_cam_wtop + dis_cam_wbot + dis_cam_hright + dis_cam_hleft) / 4
          
        return distance_camera, focal_length

    def convert(self, corners):
        topLeft, topRight, bottomLeft, bottomRight = corners
        topRight = (int(topRight[0]), int(topRight[1]))
        topLeft = (int(topLeft[0]), int(topLeft[1]))
        bottomRight = (int(bottomRight[0]), int(bottomRight[1]))
        bottomLeft = (int(bottomLeft[0]), int(bottomLeft[1]))
        return topRight, topLeft, bottomRight, bottomLeft
    
    def npixel(self, startpoint, endpoint):
        pixelWeight = math.sqrt((startpoint[0] - endpoint[0]) ** 2 + (startpoint[1] - endpoint[1]) ** 2)
        return pixelWeight
        
    def calculate_focal_length(self, pixel):
        focal_length = (pixel * self.distance) / self.weight
        return focal_length
        
