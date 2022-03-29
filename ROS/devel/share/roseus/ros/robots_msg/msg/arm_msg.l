;; Auto-generated. Do not edit!


(when (boundp 'robots_msg::arm_msg)
  (if (not (find-package "ROBOTS_MSG"))
    (make-package "ROBOTS_MSG"))
  (shadow 'arm_msg (find-package "ROBOTS_MSG")))
(unless (find-package "ROBOTS_MSG::ARM_MSG")
  (make-package "ROBOTS_MSG::ARM_MSG"))

(in-package "ROS")
;;//! \htmlinclude arm_msg.msg.html


(defclass robots_msg::arm_msg
  :super ros::object
  :slots (_type _ip _port _id _inst_before _battery _servo0 _servo1 _servo2 _servo3 _servo4 _servo5 _camera _magnet _status ))

(defmethod robots_msg::arm_msg
  (:init
   (&key
    ((:type __type) "")
    ((:ip __ip) "")
    ((:port __port) 0)
    ((:id __id) 0)
    ((:inst_before __inst_before) 0)
    ((:battery __battery) 0.0)
    ((:servo0 __servo0) (instance robots_msg::xl320 :init))
    ((:servo1 __servo1) (instance robots_msg::xl320 :init))
    ((:servo2 __servo2) (instance robots_msg::xl320 :init))
    ((:servo3 __servo3) (instance robots_msg::xl320 :init))
    ((:servo4 __servo4) (instance robots_msg::xl320 :init))
    ((:servo5 __servo5) (instance robots_msg::xl320 :init))
    ((:camera __camera) (instance robots_msg::jevois :init))
    ((:magnet __magnet) 0)
    ((:status __status) "")
    )
   (send-super :init)
   (setq _type (string __type))
   (setq _ip (string __ip))
   (setq _port (round __port))
   (setq _id (round __id))
   (setq _inst_before (round __inst_before))
   (setq _battery (float __battery))
   (setq _servo0 __servo0)
   (setq _servo1 __servo1)
   (setq _servo2 __servo2)
   (setq _servo3 __servo3)
   (setq _servo4 __servo4)
   (setq _servo5 __servo5)
   (setq _camera __camera)
   (setq _magnet (round __magnet))
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
  (:servo0
   (&rest __servo0)
   (if (keywordp (car __servo0))
       (send* _servo0 __servo0)
     (progn
       (if __servo0 (setq _servo0 (car __servo0)))
       _servo0)))
  (:servo1
   (&rest __servo1)
   (if (keywordp (car __servo1))
       (send* _servo1 __servo1)
     (progn
       (if __servo1 (setq _servo1 (car __servo1)))
       _servo1)))
  (:servo2
   (&rest __servo2)
   (if (keywordp (car __servo2))
       (send* _servo2 __servo2)
     (progn
       (if __servo2 (setq _servo2 (car __servo2)))
       _servo2)))
  (:servo3
   (&rest __servo3)
   (if (keywordp (car __servo3))
       (send* _servo3 __servo3)
     (progn
       (if __servo3 (setq _servo3 (car __servo3)))
       _servo3)))
  (:servo4
   (&rest __servo4)
   (if (keywordp (car __servo4))
       (send* _servo4 __servo4)
     (progn
       (if __servo4 (setq _servo4 (car __servo4)))
       _servo4)))
  (:servo5
   (&rest __servo5)
   (if (keywordp (car __servo5))
       (send* _servo5 __servo5)
     (progn
       (if __servo5 (setq _servo5 (car __servo5)))
       _servo5)))
  (:camera
   (&rest __camera)
   (if (keywordp (car __camera))
       (send* _camera __camera)
     (progn
       (if __camera (setq _camera (car __camera)))
       _camera)))
  (:magnet
   (&optional __magnet)
   (if __magnet (setq _magnet __magnet)) _magnet)
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
    ;; robots_msg/xl320 _servo0
    (send _servo0 :serialization-length)
    ;; robots_msg/xl320 _servo1
    (send _servo1 :serialization-length)
    ;; robots_msg/xl320 _servo2
    (send _servo2 :serialization-length)
    ;; robots_msg/xl320 _servo3
    (send _servo3 :serialization-length)
    ;; robots_msg/xl320 _servo4
    (send _servo4 :serialization-length)
    ;; robots_msg/xl320 _servo5
    (send _servo5 :serialization-length)
    ;; robots_msg/jevois _camera
    (send _camera :serialization-length)
    ;; uint8 _magnet
    1
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
     ;; robots_msg/xl320 _servo0
       (send _servo0 :serialize s)
     ;; robots_msg/xl320 _servo1
       (send _servo1 :serialize s)
     ;; robots_msg/xl320 _servo2
       (send _servo2 :serialize s)
     ;; robots_msg/xl320 _servo3
       (send _servo3 :serialize s)
     ;; robots_msg/xl320 _servo4
       (send _servo4 :serialize s)
     ;; robots_msg/xl320 _servo5
       (send _servo5 :serialize s)
     ;; robots_msg/jevois _camera
       (send _camera :serialize s)
     ;; uint8 _magnet
       (write-byte _magnet s)
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
   ;; robots_msg/xl320 _servo0
     (send _servo0 :deserialize buf ptr-) (incf ptr- (send _servo0 :serialization-length))
   ;; robots_msg/xl320 _servo1
     (send _servo1 :deserialize buf ptr-) (incf ptr- (send _servo1 :serialization-length))
   ;; robots_msg/xl320 _servo2
     (send _servo2 :deserialize buf ptr-) (incf ptr- (send _servo2 :serialization-length))
   ;; robots_msg/xl320 _servo3
     (send _servo3 :deserialize buf ptr-) (incf ptr- (send _servo3 :serialization-length))
   ;; robots_msg/xl320 _servo4
     (send _servo4 :deserialize buf ptr-) (incf ptr- (send _servo4 :serialization-length))
   ;; robots_msg/xl320 _servo5
     (send _servo5 :deserialize buf ptr-) (incf ptr- (send _servo5 :serialization-length))
   ;; robots_msg/jevois _camera
     (send _camera :deserialize buf ptr-) (incf ptr- (send _camera :serialization-length))
   ;; uint8 _magnet
     (setq _magnet (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _status
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _status (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get robots_msg::arm_msg :md5sum-) "01914fc38e80d47bed67675890824f7b")
(setf (get robots_msg::arm_msg :datatype-) "robots_msg/arm_msg")
(setf (get robots_msg::arm_msg :definition-)
      "string type # type of robot  ”ARM20”
string ip # address of the robot ESP8866
uint32 port # Port for comunication
uint8 id # identyti of robot a uint8_t
uint8 inst_before # the last instruction runner 
float32 battery # % of the battery
robots_msg/xl320 servo0 # only arm20
robots_msg/xl320 servo1 # only arm20
robots_msg/xl320 servo2 # only arm20
robots_msg/xl320 servo3 # only arm20
robots_msg/xl320 servo4 # only arm20
robots_msg/xl320 servo5 # only arm20
robots_msg/jevois camera # Aruco info
uint8 magnet            # status magnet 1 ON 0 OFF
string status # \"Completed\" or \"Error tipo 3\"
================================================================================
MSG: robots_msg/xl320
uint8  ID
uint8  LED
uint16 speed
uint16 Goal_Position
uint16 Present_Position

================================================================================
MSG: robots_msg/jevois
string type
uint8 id
int16 targx #coordinate x
int16 targy #coordinate y
int16 targw # weight of fiducial
int16 targh # hight of fiducial

")



(provide :robots_msg/arm_msg "01914fc38e80d47bed67675890824f7b")


