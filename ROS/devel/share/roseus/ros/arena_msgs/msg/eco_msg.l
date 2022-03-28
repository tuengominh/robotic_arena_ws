;; Auto-generated. Do not edit!


(when (boundp 'arena_msgs::eco_msg)
  (if (not (find-package "ARENA_MSGS"))
    (make-package "ARENA_MSGS"))
  (shadow 'eco_msg (find-package "ARENA_MSGS")))
(unless (find-package "ARENA_MSGS::ECO_MSG")
  (make-package "ARENA_MSGS::ECO_MSG"))

(in-package "ROS")
;;//! \htmlinclude eco_msg.msg.html


(defclass arena_msgs::eco_msg
  :super ros::object
  :slots (_type _ip _port _id _inst_before _battery _tempe _line0 _line1 _motor1 _motor2 _camera _sensor_lidar _status ))

(defmethod arena_msgs::eco_msg
  (:init
   (&key
    ((:type __type) "")
    ((:ip __ip) "")
    ((:port __port) 0)
    ((:id __id) 0)
    ((:inst_before __inst_before) 0)
    ((:battery __battery) 0.0)
    ((:tempe __tempe) 0.0)
    ((:line0 __line0) 0)
    ((:line1 __line1) 0)
    ((:motor1 __motor1) (instance arena_msgs::motor :init))
    ((:motor2 __motor2) (instance arena_msgs::motor :init))
    ((:camera __camera) (instance arena_msgs::jevois :init))
    ((:sensor_lidar __sensor_lidar) (instance arena_msgs::lidar :init))
    ((:status __status) "")
    )
   (send-super :init)
   (setq _type (string __type))
   (setq _ip (string __ip))
   (setq _port (round __port))
   (setq _id (round __id))
   (setq _inst_before (round __inst_before))
   (setq _battery (float __battery))
   (setq _tempe (float __tempe))
   (setq _line0 (round __line0))
   (setq _line1 (round __line1))
   (setq _motor1 __motor1)
   (setq _motor2 __motor2)
   (setq _camera __camera)
   (setq _sensor_lidar __sensor_lidar)
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
  (:tempe
   (&optional __tempe)
   (if __tempe (setq _tempe __tempe)) _tempe)
  (:line0
   (&optional __line0)
   (if __line0 (setq _line0 __line0)) _line0)
  (:line1
   (&optional __line1)
   (if __line1 (setq _line1 __line1)) _line1)
  (:motor1
   (&rest __motor1)
   (if (keywordp (car __motor1))
       (send* _motor1 __motor1)
     (progn
       (if __motor1 (setq _motor1 (car __motor1)))
       _motor1)))
  (:motor2
   (&rest __motor2)
   (if (keywordp (car __motor2))
       (send* _motor2 __motor2)
     (progn
       (if __motor2 (setq _motor2 (car __motor2)))
       _motor2)))
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
    ;; float32 _tempe
    4
    ;; uint16 _line0
    2
    ;; uint16 _line1
    2
    ;; arena_msgs/motor _motor1
    (send _motor1 :serialization-length)
    ;; arena_msgs/motor _motor2
    (send _motor2 :serialization-length)
    ;; arena_msgs/jevois _camera
    (send _camera :serialization-length)
    ;; arena_msgs/lidar _sensor_lidar
    (send _sensor_lidar :serialization-length)
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
     ;; float32 _tempe
       (sys::poke _tempe (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint16 _line0
       (write-word _line0 s)
     ;; uint16 _line1
       (write-word _line1 s)
     ;; arena_msgs/motor _motor1
       (send _motor1 :serialize s)
     ;; arena_msgs/motor _motor2
       (send _motor2 :serialize s)
     ;; arena_msgs/jevois _camera
       (send _camera :serialize s)
     ;; arena_msgs/lidar _sensor_lidar
       (send _sensor_lidar :serialize s)
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
   ;; float32 _tempe
     (setq _tempe (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint16 _line0
     (setq _line0 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _line1
     (setq _line1 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; arena_msgs/motor _motor1
     (send _motor1 :deserialize buf ptr-) (incf ptr- (send _motor1 :serialization-length))
   ;; arena_msgs/motor _motor2
     (send _motor2 :deserialize buf ptr-) (incf ptr- (send _motor2 :serialization-length))
   ;; arena_msgs/jevois _camera
     (send _camera :deserialize buf ptr-) (incf ptr- (send _camera :serialization-length))
   ;; arena_msgs/lidar _sensor_lidar
     (send _sensor_lidar :deserialize buf ptr-) (incf ptr- (send _sensor_lidar :serialization-length))
   ;; string _status
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _status (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get arena_msgs::eco_msg :md5sum-) "11c8a7147be0b5a11f6c147bd471ccda")
(setf (get arena_msgs::eco_msg :datatype-) "arena_msgs/eco_msg")
(setf (get arena_msgs::eco_msg :definition-)
      "string type # type of robot “ECOLOGY20”
string ip # address of the robot ESP8866
uint32 port # Port for comunication
uint8 id # identyti of robot a uint8_t
uint8 inst_before # the last instruction runner 
float32 battery # % of the battery
float32 tempe # temperature sensor
uint16 line0 # line sensor
uint16 line1 
arena_msgs/motor motor1 # motor_left in ecology
arena_msgs/motor motor2 # motor_right in ecology
arena_msgs/jevois camera # Aruco info
arena_msgs/lidar sensor_lidar # only one value or 
string status # \"Completed\" or \"Error tipo 1\"

================================================================================
MSG: arena_msgs/motor
uint8 speed # 0..255 to ecology20 and 0..180 to tanke20
uint8 dir # 0 stop 1:CW 2:CCW
int16 pos # position 


================================================================================
MSG: arena_msgs/jevois
string type
uint8 id
int16 targx #coordinate x
int16 targy #coordinate y
int16 targw # weight of fiducial
int16 targh # hight of fiducial

================================================================================
MSG: arena_msgs/lidar
int16 position
int16 range

")



(provide :arena_msgs/eco_msg "11c8a7147be0b5a11f6c147bd471ccda")


