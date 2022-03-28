;; Auto-generated. Do not edit!


(when (boundp 'robots_msg::eco_msgs)
  (if (not (find-package "ROBOTS_MSG"))
    (make-package "ROBOTS_MSG"))
  (shadow 'eco_msgs (find-package "ROBOTS_MSG")))
(unless (find-package "ROBOTS_MSG::ECO_MSGS")
  (make-package "ROBOTS_MSG::ECO_MSGS"))

(in-package "ROS")
;;//! \htmlinclude eco_msgs.msg.html


(defclass robots_msg::eco_msgs
  :super ros::object
  :slots (_type _ip _port _id _inst_before _battery _range_l _range_c _range_r _compas _pos_motor1 _pos_motor2 _jevois _status ))

(defmethod robots_msg::eco_msgs
  (:init
   (&key
    ((:type __type) "")
    ((:ip __ip) "")
    ((:port __port) 0)
    ((:id __id) 0)
    ((:inst_before __inst_before) 0)
    ((:battery __battery) 0.0)
    ((:range_l __range_l) 0)
    ((:range_c __range_c) 0)
    ((:range_r __range_r) 0)
    ((:compas __compas) 0)
    ((:pos_motor1 __pos_motor1) 0)
    ((:pos_motor2 __pos_motor2) 0)
    ((:jevois __jevois) (instance robots_msg::camera :init))
    ((:status __status) "")
    )
   (send-super :init)
   (setq _type (string __type))
   (setq _ip (string __ip))
   (setq _port (round __port))
   (setq _id (round __id))
   (setq _inst_before (round __inst_before))
   (setq _battery (float __battery))
   (setq _range_l (round __range_l))
   (setq _range_c (round __range_c))
   (setq _range_r (round __range_r))
   (setq _compas (round __compas))
   (setq _pos_motor1 (round __pos_motor1))
   (setq _pos_motor2 (round __pos_motor2))
   (setq _jevois __jevois)
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
  (:range_l
   (&optional __range_l)
   (if __range_l (setq _range_l __range_l)) _range_l)
  (:range_c
   (&optional __range_c)
   (if __range_c (setq _range_c __range_c)) _range_c)
  (:range_r
   (&optional __range_r)
   (if __range_r (setq _range_r __range_r)) _range_r)
  (:compas
   (&optional __compas)
   (if __compas (setq _compas __compas)) _compas)
  (:pos_motor1
   (&optional __pos_motor1)
   (if __pos_motor1 (setq _pos_motor1 __pos_motor1)) _pos_motor1)
  (:pos_motor2
   (&optional __pos_motor2)
   (if __pos_motor2 (setq _pos_motor2 __pos_motor2)) _pos_motor2)
  (:jevois
   (&rest __jevois)
   (if (keywordp (car __jevois))
       (send* _jevois __jevois)
     (progn
       (if __jevois (setq _jevois (car __jevois)))
       _jevois)))
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
    ;; uint16 _range_l
    2
    ;; uint16 _range_c
    2
    ;; uint16 _range_r
    2
    ;; int16 _compas
    2
    ;; int16 _pos_motor1
    2
    ;; int16 _pos_motor2
    2
    ;; robots_msg/camera _jevois
    (send _jevois :serialization-length)
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
     ;; uint16 _range_l
       (write-word _range_l s)
     ;; uint16 _range_c
       (write-word _range_c s)
     ;; uint16 _range_r
       (write-word _range_r s)
     ;; int16 _compas
       (write-word _compas s)
     ;; int16 _pos_motor1
       (write-word _pos_motor1 s)
     ;; int16 _pos_motor2
       (write-word _pos_motor2 s)
     ;; robots_msg/camera _jevois
       (send _jevois :serialize s)
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
   ;; uint16 _range_l
     (setq _range_l (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _range_c
     (setq _range_c (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _range_r
     (setq _range_r (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _compas
     (setq _compas (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _pos_motor1
     (setq _pos_motor1 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _pos_motor2
     (setq _pos_motor2 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; robots_msg/camera _jevois
     (send _jevois :deserialize buf ptr-) (incf ptr- (send _jevois :serialization-length))
   ;; string _status
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _status (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get robots_msg::eco_msgs :md5sum-) "b06ae61beeb797a599af8e0764bf224c")
(setf (get robots_msg::eco_msgs :datatype-) "robots_msg/eco_msgs")
(setf (get robots_msg::eco_msgs :definition-)
      "string type  # type of robot “ECOLOGY20”
string ip  # address of the robot ESP8866
uint32 port  # port for comunication
uint8 id  # uint8_t id of the robot
uint8 inst_before  # the last instruction runner 
float32 battery  # % of the battery
uint16 range_l  # left ir sensor
uint16 range_c  # laser sensor
uint16 range_r  # right ir sensor 
int16 compas  # heading
int16 pos_motor1  # position motor left
int16 pos_motor2  # position motor right 
robots_msg/camera jevois  # Aruco info
string status  # \"Completed\" or \"Error type 1\"

================================================================================
MSG: robots_msg/camera
int8 detect  # 1 : detect, 0 : non detect    
uint8 id  # id of fiducial
int16 targx  # coordinate x
int16 targy  # coordinate y
string data  # all info in string

")



(provide :robots_msg/eco_msgs "b06ae61beeb797a599af8e0764bf224c")


