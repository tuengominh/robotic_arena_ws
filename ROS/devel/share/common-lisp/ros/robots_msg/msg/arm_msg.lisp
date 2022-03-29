; Auto-generated. Do not edit!


(cl:in-package robots_msg-msg)


;//! \htmlinclude arm_msg.msg.html

(cl:defclass <arm_msg> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type cl:string
    :initform "")
   (ip
    :reader ip
    :initarg :ip
    :type cl:string
    :initform "")
   (port
    :reader port
    :initarg :port
    :type cl:integer
    :initform 0)
   (id
    :reader id
    :initarg :id
    :type cl:fixnum
    :initform 0)
   (inst_before
    :reader inst_before
    :initarg :inst_before
    :type cl:fixnum
    :initform 0)
   (battery
    :reader battery
    :initarg :battery
    :type cl:float
    :initform 0.0)
   (servo0
    :reader servo0
    :initarg :servo0
    :type robots_msg-msg:xl320
    :initform (cl:make-instance 'robots_msg-msg:xl320))
   (servo1
    :reader servo1
    :initarg :servo1
    :type robots_msg-msg:xl320
    :initform (cl:make-instance 'robots_msg-msg:xl320))
   (servo2
    :reader servo2
    :initarg :servo2
    :type robots_msg-msg:xl320
    :initform (cl:make-instance 'robots_msg-msg:xl320))
   (servo3
    :reader servo3
    :initarg :servo3
    :type robots_msg-msg:xl320
    :initform (cl:make-instance 'robots_msg-msg:xl320))
   (servo4
    :reader servo4
    :initarg :servo4
    :type robots_msg-msg:xl320
    :initform (cl:make-instance 'robots_msg-msg:xl320))
   (servo5
    :reader servo5
    :initarg :servo5
    :type robots_msg-msg:xl320
    :initform (cl:make-instance 'robots_msg-msg:xl320))
   (camera
    :reader camera
    :initarg :camera
    :type robots_msg-msg:jevois
    :initform (cl:make-instance 'robots_msg-msg:jevois))
   (magnet
    :reader magnet
    :initarg :magnet
    :type cl:fixnum
    :initform 0)
   (status
    :reader status
    :initarg :status
    :type cl:string
    :initform ""))
)

(cl:defclass arm_msg (<arm_msg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <arm_msg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'arm_msg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robots_msg-msg:<arm_msg> is deprecated: use robots_msg-msg:arm_msg instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <arm_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robots_msg-msg:type-val is deprecated.  Use robots_msg-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'ip-val :lambda-list '(m))
(cl:defmethod ip-val ((m <arm_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robots_msg-msg:ip-val is deprecated.  Use robots_msg-msg:ip instead.")
  (ip m))

(cl:ensure-generic-function 'port-val :lambda-list '(m))
(cl:defmethod port-val ((m <arm_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robots_msg-msg:port-val is deprecated.  Use robots_msg-msg:port instead.")
  (port m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <arm_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robots_msg-msg:id-val is deprecated.  Use robots_msg-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'inst_before-val :lambda-list '(m))
(cl:defmethod inst_before-val ((m <arm_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robots_msg-msg:inst_before-val is deprecated.  Use robots_msg-msg:inst_before instead.")
  (inst_before m))

(cl:ensure-generic-function 'battery-val :lambda-list '(m))
(cl:defmethod battery-val ((m <arm_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robots_msg-msg:battery-val is deprecated.  Use robots_msg-msg:battery instead.")
  (battery m))

(cl:ensure-generic-function 'servo0-val :lambda-list '(m))
(cl:defmethod servo0-val ((m <arm_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robots_msg-msg:servo0-val is deprecated.  Use robots_msg-msg:servo0 instead.")
  (servo0 m))

(cl:ensure-generic-function 'servo1-val :lambda-list '(m))
(cl:defmethod servo1-val ((m <arm_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robots_msg-msg:servo1-val is deprecated.  Use robots_msg-msg:servo1 instead.")
  (servo1 m))

(cl:ensure-generic-function 'servo2-val :lambda-list '(m))
(cl:defmethod servo2-val ((m <arm_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robots_msg-msg:servo2-val is deprecated.  Use robots_msg-msg:servo2 instead.")
  (servo2 m))

(cl:ensure-generic-function 'servo3-val :lambda-list '(m))
(cl:defmethod servo3-val ((m <arm_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robots_msg-msg:servo3-val is deprecated.  Use robots_msg-msg:servo3 instead.")
  (servo3 m))

(cl:ensure-generic-function 'servo4-val :lambda-list '(m))
(cl:defmethod servo4-val ((m <arm_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robots_msg-msg:servo4-val is deprecated.  Use robots_msg-msg:servo4 instead.")
  (servo4 m))

(cl:ensure-generic-function 'servo5-val :lambda-list '(m))
(cl:defmethod servo5-val ((m <arm_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robots_msg-msg:servo5-val is deprecated.  Use robots_msg-msg:servo5 instead.")
  (servo5 m))

(cl:ensure-generic-function 'camera-val :lambda-list '(m))
(cl:defmethod camera-val ((m <arm_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robots_msg-msg:camera-val is deprecated.  Use robots_msg-msg:camera instead.")
  (camera m))

(cl:ensure-generic-function 'magnet-val :lambda-list '(m))
(cl:defmethod magnet-val ((m <arm_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robots_msg-msg:magnet-val is deprecated.  Use robots_msg-msg:magnet instead.")
  (magnet m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <arm_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robots_msg-msg:status-val is deprecated.  Use robots_msg-msg:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <arm_msg>) ostream)
  "Serializes a message object of type '<arm_msg>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'type))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'ip))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'ip))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'port)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'port)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'port)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'port)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'inst_before)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'battery))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'servo0) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'servo1) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'servo2) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'servo3) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'servo4) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'servo5) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'camera) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'magnet)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'status))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <arm_msg>) istream)
  "Deserializes a message object of type '<arm_msg>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ip) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'ip) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'port)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'port)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'port)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'port)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'inst_before)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'battery) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'servo0) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'servo1) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'servo2) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'servo3) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'servo4) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'servo5) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'camera) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'magnet)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'status) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<arm_msg>)))
  "Returns string type for a message object of type '<arm_msg>"
  "robots_msg/arm_msg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'arm_msg)))
  "Returns string type for a message object of type 'arm_msg"
  "robots_msg/arm_msg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<arm_msg>)))
  "Returns md5sum for a message object of type '<arm_msg>"
  "01914fc38e80d47bed67675890824f7b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'arm_msg)))
  "Returns md5sum for a message object of type 'arm_msg"
  "01914fc38e80d47bed67675890824f7b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<arm_msg>)))
  "Returns full string definition for message of type '<arm_msg>"
  (cl:format cl:nil "string type # type of robot  ”ARM20”~%string ip # address of the robot ESP8866~%uint32 port # Port for comunication~%uint8 id # identyti of robot a uint8_t~%uint8 inst_before # the last instruction runner ~%float32 battery # % of the battery~%robots_msg/xl320 servo0 # only arm20~%robots_msg/xl320 servo1 # only arm20~%robots_msg/xl320 servo2 # only arm20~%robots_msg/xl320 servo3 # only arm20~%robots_msg/xl320 servo4 # only arm20~%robots_msg/xl320 servo5 # only arm20~%robots_msg/jevois camera # Aruco info~%uint8 magnet            # status magnet 1 ON 0 OFF~%string status # \"Completed\" or \"Error tipo 3\"~%================================================================================~%MSG: robots_msg/xl320~%uint8  ID~%uint8  LED~%uint16 speed~%uint16 Goal_Position~%uint16 Present_Position~%~%================================================================================~%MSG: robots_msg/jevois~%string type~%uint8 id~%int16 targx #coordinate x~%int16 targy #coordinate y~%int16 targw # weight of fiducial~%int16 targh # hight of fiducial~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'arm_msg)))
  "Returns full string definition for message of type 'arm_msg"
  (cl:format cl:nil "string type # type of robot  ”ARM20”~%string ip # address of the robot ESP8866~%uint32 port # Port for comunication~%uint8 id # identyti of robot a uint8_t~%uint8 inst_before # the last instruction runner ~%float32 battery # % of the battery~%robots_msg/xl320 servo0 # only arm20~%robots_msg/xl320 servo1 # only arm20~%robots_msg/xl320 servo2 # only arm20~%robots_msg/xl320 servo3 # only arm20~%robots_msg/xl320 servo4 # only arm20~%robots_msg/xl320 servo5 # only arm20~%robots_msg/jevois camera # Aruco info~%uint8 magnet            # status magnet 1 ON 0 OFF~%string status # \"Completed\" or \"Error tipo 3\"~%================================================================================~%MSG: robots_msg/xl320~%uint8  ID~%uint8  LED~%uint16 speed~%uint16 Goal_Position~%uint16 Present_Position~%~%================================================================================~%MSG: robots_msg/jevois~%string type~%uint8 id~%int16 targx #coordinate x~%int16 targy #coordinate y~%int16 targw # weight of fiducial~%int16 targh # hight of fiducial~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <arm_msg>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'type))
     4 (cl:length (cl:slot-value msg 'ip))
     4
     1
     1
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'servo0))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'servo1))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'servo2))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'servo3))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'servo4))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'servo5))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'camera))
     1
     4 (cl:length (cl:slot-value msg 'status))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <arm_msg>))
  "Converts a ROS message object to a list"
  (cl:list 'arm_msg
    (cl:cons ':type (type msg))
    (cl:cons ':ip (ip msg))
    (cl:cons ':port (port msg))
    (cl:cons ':id (id msg))
    (cl:cons ':inst_before (inst_before msg))
    (cl:cons ':battery (battery msg))
    (cl:cons ':servo0 (servo0 msg))
    (cl:cons ':servo1 (servo1 msg))
    (cl:cons ':servo2 (servo2 msg))
    (cl:cons ':servo3 (servo3 msg))
    (cl:cons ':servo4 (servo4 msg))
    (cl:cons ':servo5 (servo5 msg))
    (cl:cons ':camera (camera msg))
    (cl:cons ':magnet (magnet msg))
    (cl:cons ':status (status msg))
))
