;; Auto-generated. Do not edit!


(when (boundp 'robots_msg::tanke_msg)
  (if (not (find-package "ROBOTS_MSG"))
    (make-package "ROBOTS_MSG"))
  (shadow 'tanke_msg (find-package "ROBOTS_MSG")))
(unless (find-package "ROBOTS_MSG::TANKE_MSG")
  (make-package "ROBOTS_MSG::TANKE_MSG"))

(in-package "ROS")
;;//! \htmlinclude tanke_msg.msg.html


(defclass robots_msg::tanke_msg
  :super ros::object
  :slots (_type _ip _port _id _inst_before _battery _motor1 _motor3 _motor2 _motor4 _camera _sensor_lidar _plat _status ))

(defmethod robots_msg::tanke_msg
  (:init
   (&key
    ((:type __type) "")
    ((:ip __ip) "")
    ((:port __port) 0)
    ((:id __id) 0)
    ((:inst_before __inst_before) 0)
    ((:battery __battery) 0.0)
    ((:motor1 __motor1) (instance robots_msg::motor :init))
    ((:motor3 __motor3) (instance robots_msg::motor :init))
    ((:motor2 __motor2) (instance robots_msg::motor :init))
    ((:motor4 __motor4) (instance robots_msg::motor :init))
    ((:camera __camera) (instance robots_msg::jevois :init))
    ((:sensor_lidar __sensor_lidar) (instance robots_msg::lidar :init))
    ((:plat __plat) (instance robots_msg::platform :init))
    ((:status __status) "")
    )
   (send-super :init)
   (setq _type (string __type))
   (setq _ip (string __ip))
   (setq _port (round __port))
   (setq _id (round __id))
   (setq _inst_before (round __inst_before))
   (setq _battery (float __battery))
   (setq _motor1 __motor1)
   (setq _motor3 __motor3)
   (setq _motor2 __motor2)
   (setq _motor4 __motor4)
   (setq _camera __camera)
   (setq _sensor_lidar __sensor_lidar)
   (setq _plat __plat)
   (setq _status (string __status))
   self)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:ip
   (&optional __ip)
   (if __ip (setq _ip __ip)) _ip)
  (:port
   (&optional __port)
   (if __port (setq _port __port)) _port)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:inst_before
   (&optional __inst_before)
   (if __inst_before (setq _inst_before __inst_before)) _inst_before)
  (:battery
   (&optional __battery)
   (if __battery (setq _battery __battery)) _battery)
  (:motor1
   (&rest __motor1)
   (if (keywordp (car __motor1))
       (send* _motor1 __motor1)
     (progn
       (if __motor1 (setq _motor1 (car __motor1)))
       _motor1)))
  (:motor3
   (&rest __motor3)
   (if (keywordp (car __motor3))
       (send* _motor3 __motor3)
     (progn
       (if __motor3 (setq _motor3 (car __motor3)))
       _motor3)))
  (:motor2
   (&rest __motor2)
   (if (keywordp (car __motor2))
       (send* _motor2 __motor2)
     (progn
       (if __motor2 (setq _motor2 (car __motor2)))
       _motor2)))
  (:motor4
   (&rest __motor4)
   (if (keywordp (car __motor4))
       (send* _motor4 __motor4)
     (progn
       (if __motor4 (setq _motor4 (car __motor4)))
       _motor4)))
  (:camera
   (&rest __camera)
   (if (keywordp (car __camera))
       (send* _camera __camera)
     (progn
       (if __camera (setq _camera (car __camera)))
       _camera)))
  (:sensor_lidar
   (&rest __sensor_lidar)
   (if (keywordp (car __sensor_lidar))
       (send* _sensor_lidar __sensor_lidar)
     (progn
       (if __sensor_lidar (setq _sensor_lidar (car __sensor_lidar)))
       _sensor_lidar)))
  (:plat
   (&rest __plat)
   (if (keywordp (car __plat))
       (send* _plat __plat)
     (progn
       (if __plat (setq _plat (car __plat)))
       _plat)))
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; string _type
    4 (length _type)
    ;; string _ip
    4 (length _ip)
    ;; uint32 _port
    4
    ;; uint8 _id
    1
    ;; uint8 _inst_before
    1
    ;; float32 _battery
    4
    ;; robots_msg/motor _motor1
    (send _motor1 :serialization-length)
    ;; robots_msg/motor _motor3
    (send _motor3 :serialization-length)
    ;; robots_msg/motor _motor2
    (send _motor2 :serialization-length)
    ;; robots_msg/motor _motor4
    (send _motor4 :serialization-length)
    ;; robots_msg/jevois _camera
    (send _camera :serialization-length)
    ;; robots_msg/lidar _sensor_lidar
    (send _sensor_lidar :serialization-length)
    ;; robots_msg/platform _plat
    (send _plat :serialization-length)
    ;; string _status
    4 (length _status)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _type
       (write-long (length _type) s) (princ _type s)
     ;; string _ip
       (write-long (length _ip) s) (princ _ip s)
     ;; uint32 _port
       (write-long _port s)
     ;; uint8 _id
       (write-byte _id s)
     ;; uint8 _inst_before
       (write-byte _inst_before s)
     ;; float32 _battery
       (sys::poke _battery (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; robots_msg/motor _motor1
       (send _motor1 :serialize s)
     ;; robots_msg/motor _motor3
       (send _motor3 :serialize s)
     ;; robots_msg/motor _motor2
       (send _motor2 :serialize s)
     ;; robots_msg/motor _motor4
       (send _motor4 :serialize s)
     ;; robots_msg/jevois _camera
       (send _camera :serialize s)
     ;; robots_msg/lidar _sensor_lidar
       (send _sensor_lidar :serialize s)
     ;; robots_msg/platform _plat
       (send _plat :serialize s)
     ;; string _status
       (write-long (length _status) s) (princ _status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _ip
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _ip (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint32 _port
     (setq _port (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8 _id
     (setq _id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _inst_before
     (setq _inst_before (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _battery
     (setq _battery (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; robots_msg/motor _motor1
     (send _motor1 :deserialize buf ptr-) (incf ptr- (send _motor1 :serialization-length))
   ;; robots_msg/motor _motor3
     (send _motor3 :deserialize buf ptr-) (incf ptr- (send _motor3 :serialization-length))
   ;; robots_msg/motor _motor2
     (send _motor2 :deserialize buf ptr-) (incf ptr- (send _motor2 :serialization-length))
   ;; robots_msg/motor _motor4
     (send _motor4 :deserialize buf ptr-) (incf ptr- (send _motor4 :serialization-length))
   ;; robots_msg/jevois _camera
     (send _camera :deserialize buf ptr-) (incf ptr- (send _camera :serialization-length))
   ;; robots_msg/lidar _sensor_lidar
     (send _sensor_lidar :deserialize buf ptr-) (incf ptr- (send _sensor_lidar :serialization-length))
   ;; robots_msg/platform _plat
     (send _plat :deserialize buf ptr-) (incf ptr- (send _plat :serialization-length))
   ;; string _status
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _status (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get robots_msg::tanke_msg :md5sum-) "12f0edb48ed4bd04ea82e5f45e0f4635")
(setf (get robots_msg::tanke_msg :datatype-) "robots_msg/tanke_msg")
(setf (get robots_msg::tanke_msg :definition-)
      "string type # type of robot “TANKE20”
string ip # address of the robot ESP8866
uint32 port # Port for comunication
uint8 id # identyti of robot a uint8_t
uint8 inst_before # the last instruction runner 
float32 battery # % of the battery
robots_msg/motor motor1 # motor_left in ecology
robots_msg/motor motor3 # motor_right in ecology
robots_msg/motor motor2 # only tanke20
robots_msg/motor motor4 # only tanke20
robots_msg/jevois camera # Aruco info
robots_msg/lidar sensor_lidar # only one value or 
robots_msg/platform plat
string status # \"Completed\" or \"Error tipo 2\"
================================================================================
MSG: robots_msg/motor
uint8 speed # 0..255 to ecology20 and 0..180 to tanke20
uint8 dir # 0 stop 1:CW 2:CCW
int16 pos # position 

================================================================================
MSG: robots_msg/jevois
string type
uint8 id
int16 targx #coordinate x
int16 targy #coordinate y
int16 targw # weight of fiducial
int16 targh # hight of fiducial

================================================================================
MSG: robots_msg/lidar
int16 position
int16 range

================================================================================
MSG: robots_msg/platform
string action # the actions are 'MOVING_UP', 'MOVING_DOWN', 'STOP'
bool up #  True when is up
bool down # True when is down 


")



(provide :robots_msg/tanke_msg "12f0edb48ed4bd04ea82e5f45e0f4635")


