;; Auto-generated. Do not edit!


(when (boundp 'robots_msg::armpap_msgs)
  (if (not (find-package "ROBOTS_MSG"))
    (make-package "ROBOTS_MSG"))
  (shadow 'armpap_msgs (find-package "ROBOTS_MSG")))
(unless (find-package "ROBOTS_MSG::ARMPAP_MSGS")
  (make-package "ROBOTS_MSG::ARMPAP_MSGS"))

(in-package "ROS")
;;//! \htmlinclude armpap_msgs.msg.html


(defclass robots_msg::armpap_msgs
  :super ros::object
  :slots (_type _ip _port _id _inst_before _base_speed _base_target _base_current _left_speed _left_target _left_current _right_speed _right_target _right_current _color _gripper _status ))

(defmethod robots_msg::armpap_msgs
  (:init
   (&key
    ((:type __type) "")
    ((:ip __ip) "")
    ((:port __port) 0)
    ((:id __id) 0)
    ((:inst_before __inst_before) 0)
    ((:base_speed __base_speed) 0)
    ((:base_target __base_target) 0)
    ((:base_current __base_current) 0)
    ((:left_speed __left_speed) 0)
    ((:left_target __left_target) 0)
    ((:left_current __left_current) 0)
    ((:right_speed __right_speed) 0)
    ((:right_target __right_target) 0)
    ((:right_current __right_current) 0)
    ((:color __color) 0)
    ((:gripper __gripper) 0)
    ((:status __status) "")
    )
   (send-super :init)
   (setq _type (string __type))
   (setq _ip (string __ip))
   (setq _port (round __port))
   (setq _id (round __id))
   (setq _inst_before (round __inst_before))
   (setq _base_speed (round __base_speed))
   (setq _base_target (round __base_target))
   (setq _base_current (round __base_current))
   (setq _left_speed (round __left_speed))
   (setq _left_target (round __left_target))
   (setq _left_current (round __left_current))
   (setq _right_speed (round __right_speed))
   (setq _right_target (round __right_target))
   (setq _right_current (round __right_current))
   (setq _color (round __color))
   (setq _gripper (round __gripper))
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
  (:base_speed
   (&optional __base_speed)
   (if __base_speed (setq _base_speed __base_speed)) _base_speed)
  (:base_target
   (&optional __base_target)
   (if __base_target (setq _base_target __base_target)) _base_target)
  (:base_current
   (&optional __base_current)
   (if __base_current (setq _base_current __base_current)) _base_current)
  (:left_speed
   (&optional __left_speed)
   (if __left_speed (setq _left_speed __left_speed)) _left_speed)
  (:left_target
   (&optional __left_target)
   (if __left_target (setq _left_target __left_target)) _left_target)
  (:left_current
   (&optional __left_current)
   (if __left_current (setq _left_current __left_current)) _left_current)
  (:right_speed
   (&optional __right_speed)
   (if __right_speed (setq _right_speed __right_speed)) _right_speed)
  (:right_target
   (&optional __right_target)
   (if __right_target (setq _right_target __right_target)) _right_target)
  (:right_current
   (&optional __right_current)
   (if __right_current (setq _right_current __right_current)) _right_current)
  (:color
   (&optional __color)
   (if __color (setq _color __color)) _color)
  (:gripper
   (&optional __gripper)
   (if __gripper (setq _gripper __gripper)) _gripper)
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
    ;; uint16 _base_speed
    2
    ;; int16 _base_target
    2
    ;; int16 _base_current
    2
    ;; uint16 _left_speed
    2
    ;; int16 _left_target
    2
    ;; int16 _left_current
    2
    ;; uint16 _right_speed
    2
    ;; int16 _right_target
    2
    ;; int16 _right_current
    2
    ;; uint8 _color
    1
    ;; uint8 _gripper
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
     ;; uint16 _base_speed
       (write-word _base_speed s)
     ;; int16 _base_target
       (write-word _base_target s)
     ;; int16 _base_current
       (write-word _base_current s)
     ;; uint16 _left_speed
       (write-word _left_speed s)
     ;; int16 _left_target
       (write-word _left_target s)
     ;; int16 _left_current
       (write-word _left_current s)
     ;; uint16 _right_speed
       (write-word _right_speed s)
     ;; int16 _right_target
       (write-word _right_target s)
     ;; int16 _right_current
       (write-word _right_current s)
     ;; uint8 _color
       (write-byte _color s)
     ;; uint8 _gripper
       (write-byte _gripper s)
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
   ;; uint16 _base_speed
     (setq _base_speed (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _base_target
     (setq _base_target (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _base_current
     (setq _base_current (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _left_speed
     (setq _left_speed (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _left_target
     (setq _left_target (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _left_current
     (setq _left_current (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _right_speed
     (setq _right_speed (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _right_target
     (setq _right_target (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _right_current
     (setq _right_current (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _color
     (setq _color (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _gripper
     (setq _gripper (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _status
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _status (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get robots_msg::armpap_msgs :md5sum-) "040948e8a15d597e107b2f1c93f40e51")
(setf (get robots_msg::armpap_msgs :datatype-) "robots_msg/armpap_msgs")
(setf (get robots_msg::armpap_msgs :definition-)
      "string type  # type of robot ”ARMPAP”
string ip  # address of the robot ESP8866
uint32 port  # port for comunication
uint8 id  # uint8_t id of the robot 
uint8 inst_before  # the last instruction runner 
uint16 base_speed  # base speed
int16 base_target  # base target position
int16 base_current  # base current position
uint16 left_speed  # left speed 
int16 left_target  # left target position
int16 left_current  # left current position
uint16 right_speed  # right speed
int16 right_target  # right target position
int16 right_current  # right current position
uint8 color  # color of the light 0..17
uint8 gripper  # 0 : open, 1 : close
string status  # \"Completed\" or \"Error type 3\"

")



(provide :robots_msg/armpap_msgs "040948e8a15d597e107b2f1c93f40e51")


