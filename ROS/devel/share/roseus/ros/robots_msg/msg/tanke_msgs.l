;; Auto-generated. Do not edit!


(when (boundp 'robots_msg::tanke_msgs)
  (if (not (find-package "ROBOTS_MSG"))
    (make-package "ROBOTS_MSG"))
  (shadow 'tanke_msgs (find-package "ROBOTS_MSG")))
(unless (find-package "ROBOTS_MSG::TANKE_MSGS")
  (make-package "ROBOTS_MSG::TANKE_MSGS"))

(in-package "ROS")
;;//! \htmlinclude tanke_msgs.msg.html


(defclass robots_msg::tanke_msgs
  :super ros::object
  :slots (_type _ip _port _id _inst_before _battery _range_c _compas _motor1 _motor3 _motor2 _motor4 _jevois _plat _status ))

(defmethod robots_msg::tanke_msgs
  (:init
   (&key
    ((:type __type) "")
    ((:ip __ip) "")
    ((:port __port) 0)
    ((:id __id) 0)
    ((:inst_before __inst_before) 0)
    ((:battery __battery) 0.0)
    ((:range_c __range_c) 0)
    ((:compas __compas) 0)
    ((:motor1 __motor1) 0)
    ((:motor3 __motor3) 0)
    ((:motor2 __motor2) 0)
    ((:motor4 __motor4) 0)
    ((:jevois __jevois) (instance robots_msg::camera :init))
    ((:plat __plat) (instance robots_msg::plat :init))
    ((:status __status) "")
    )
   (send-super :init)
   (setq _type (string __type))
   (setq _ip (string __ip))
   (setq _port (round __port))
   (setq _id (round __id))
   (setq _inst_before (round __inst_before))
   (setq _battery (float __battery))
   (setq _range_c (round __range_c))
   (setq _compas (round __compas))
   (setq _motor1 (round __motor1))
   (setq _motor3 (round __motor3))
   (setq _motor2 (round __motor2))
   (setq _motor4 (round __motor4))
   (setq _jevois __jevois)
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
  (:range_c
   (&optional __range_c)
   (if __range_c (setq _range_c __range_c)) _range_c)
  (:compas
   (&optional __compas)
   (if __compas (setq _compas __compas)) _compas)
  (:motor1
   (&optional __motor1)
   (if __motor1 (setq _motor1 __motor1)) _motor1)
  (:motor3
   (&optional __motor3)
   (if __motor3 (setq _motor3 __motor3)) _motor3)
  (:motor2
   (&optional __motor2)
   (if __motor2 (setq _motor2 __motor2)) _motor2)
  (:motor4
   (&optional __motor4)
   (if __motor4 (setq _motor4 __motor4)) _motor4)
  (:jevois
   (&rest __jevois)
   (if (keywordp (car __jevois))
       (send* _jevois __jevois)
     (progn
       (if __jevois (setq _jevois (car __jevois)))
       _jevois)))
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
    ;; uint16 _range_c
    2
    ;; int16 _compas
    2
    ;; uint8 _motor1
    1
    ;; uint8 _motor3
    1
    ;; uint8 _motor2
    1
    ;; uint8 _motor4
    1
    ;; robots_msg/camera _jevois
    (send _jevois :serialization-length)
    ;; robots_msg/plat _plat
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
     ;; uint16 _range_c
       (write-word _range_c s)
     ;; int16 _compas
       (write-word _compas s)
     ;; uint8 _motor1
       (write-byte _motor1 s)
     ;; uint8 _motor3
       (write-byte _motor3 s)
     ;; uint8 _motor2
       (write-byte _motor2 s)
     ;; uint8 _motor4
       (write-byte _motor4 s)
     ;; robots_msg/camera _jevois
       (send _jevois :serialize s)
     ;; robots_msg/plat _plat
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
   ;; uint16 _range_c
     (setq _range_c (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _compas
     (setq _compas (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _motor1
     (setq _motor1 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _motor3
     (setq _motor3 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _motor2
     (setq _motor2 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _motor4
     (setq _motor4 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; robots_msg/camera _jevois
     (send _jevois :deserialize buf ptr-) (incf ptr- (send _jevois :serialization-length))
   ;; robots_msg/plat _plat
     (send _plat :deserialize buf ptr-) (incf ptr- (send _plat :serialization-length))
   ;; string _status
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _status (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get robots_msg::tanke_msgs :md5sum-) "fa6b09dbb6438940f27323d40a64c654")
(setf (get robots_msg::tanke_msgs :datatype-) "robots_msg/tanke_msgs")
(setf (get robots_msg::tanke_msgs :definition-)
      "string type  # type of robot “TANKE20”
string ip  # address of the robot ESP8866
uint32 port  # port for communication
uint8 id  # uint8_t id of the robot
uint8 inst_before  # the last instruction runner 
float32 battery  # % of the battery
uint16 range_c  # laser sensor
int16 compas  # heading
uint8 motor1  # 0 : stop, 1 : CW, 2 : CCW FL
uint8 motor3  # 0 : stop, 1 : CW, 2 : CCW BL
uint8 motor2  # 0 : stop, 1 : CW, 2 : CCW FR
uint8 motor4  # 0 : stop, 1 : CW, 2 : CCW BR
robots_msg/camera jevois  # Aruco info
robots_msg/plat plat
string status  # \"Completed\" or \"Error type 2\"

================================================================================
MSG: robots_msg/camera
int8 detect  # 1 : detect, 0 : non detect    
uint8 id  # id of fiducial
int16 targx  # coordinate x
int16 targy  # coordinate y
string data  # all info in string

================================================================================
MSG: robots_msg/plat
string action  # \"MOVING_UP\", \"MOVING_DOWN\", \"STOP\"
uint8 status  # 1 : up, 0 : down

")



(provide :robots_msg/tanke_msgs "fa6b09dbb6438940f27323d40a64c654")


