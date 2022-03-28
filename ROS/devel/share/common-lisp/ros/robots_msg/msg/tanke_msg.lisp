; Auto-generated. Do not edit!


(cl:in-package robots_msg-msg)


;//! \htmlinclude tanke_msg.msg.html

(cl:defclass <tanke_msg> (roslisp-msg-protocol:ros-message)
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
   (motor1
    :reader motor1
    :initarg :motor1
    :type robots_msg-msg:motor
    :initform (cl:make-instance 'robots_msg-msg:motor))
   (motor3
    :reader motor3
    :initarg :motor3
    :type robots_msg-msg:motor
    :initform (cl:make-instance 'robots_msg-msg:motor))
   (motor2
    :reader motor2
    :initarg :motor2
    :type robots_msg-msg:motor
    :initform (cl:make-instance 'robots_msg-msg:motor))
   (motor4
    :reader motor4
    :initarg :motor4
    :type robots_msg-msg:motor
    :initform (cl:make-instance 'robots_msg-msg:motor))
   (camera
    :reader camera
    :initarg :camera
    :type robots_msg-msg:jevois
    :initform (cl:make-instance 'robots_msg-msg:jevois))
   (sensor_lidar
    :reader sensor_lidar
    :initarg :sensor_lidar
    :type robots_msg-msg:lidar
    :initform (cl:make-instance 'robots_msg-msg:lidar))
   (plat
    :reader plat
    :initarg :plat
    :type robots_msg-msg:platform
    :initform (cl:make-instance 'robots_msg-msg:platform))
   (status
    :reader status
    :initarg :status
    :type cl:string
    :initform ""))
)

(cl:defclass tanke_msg (<tanke_msg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <tanke_msg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'tanke_msg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robots_msg-msg:<tanke_msg> is deprecated: use robots_msg-msg:tanke_msg instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <tanke_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robots_msg-msg:type-val is deprecated.  Use robots_msg-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'ip-val :lambda-list '(m))
(cl:defmethod ip-val ((m <tanke_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robots_msg-msg:ip-val is deprecated.  Use robots_msg-msg:ip instead.")
  (ip m))

(cl:ensure-generic-function 'port-val :lambda-list '(m))
(cl:defmethod port-val ((m <tanke_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robots_msg-msg:port-val is deprecated.  Use robots_msg-msg:port instead.")
  (port m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <tanke_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robots_msg-msg:id-val is deprecated.  Use robots_msg-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'inst_before-val :lambda-list '(m))
(cl:defmethod inst_before-val ((m <tanke_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robots_msg-msg:inst_before-val is deprecated.  Use robots_msg-msg:inst_before instead.")
  (inst_before m))

(cl:ensure-generic-function 'battery-val :lambda-list '(m))
(cl:defmethod battery-val ((m <tanke_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robots_msg-msg:battery-val is deprecated.  Use robots_msg-msg:battery instead.")
  (battery m))

(cl:ensure-generic-function 'motor1-val :lambda-list '(m))
(cl:defmethod motor1-val ((m <tanke_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robots_msg-msg:motor1-val is deprecated.  Use robots_msg-msg:motor1 instead.")
  (motor1 m))

(cl:ensure-generic-function 'motor3-val :lambda-list '(m))
(cl:defmethod motor3-val ((m <tanke_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robots_msg-msg:motor3-val is deprecated.  Use robots_msg-msg:motor3 instead.")
  (motor3 m))

(cl:ensure-generic-function 'motor2-val :lambda-list '(m))
(cl:defmethod motor2-val ((m <tanke_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robots_msg-msg:motor2-val is deprecated.  Use robots_msg-msg:motor2 instead.")
  (motor2 m))

(cl:ensure-generic-function 'motor4-val :lambda-list '(m))
(cl:defmethod motor4-val ((m <tanke_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robots_msg-msg:motor4-val is deprecated.  Use robots_msg-msg:motor4 instead.")
  (motor4 m))

(cl:ensure-generic-function 'camera-val :lambda-list '(m))
(cl:defmethod camera-val ((m <tanke_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robots_msg-msg:camera-val is deprecated.  Use robots_msg-msg:camera instead.")
  (camera m))

(cl:ensure-generic-function 'sensor_lidar-val :lambda-list '(m))
(cl:defmethod sensor_lidar-val ((m <tanke_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robots_msg-msg:sensor_lidar-val is deprecated.  Use robots_msg-msg:sensor_lidar instead.")
  (sensor_lidar m))

(cl:ensure-generic-function 'plat-val :lambda-list '(m))
(cl:defmethod plat-val ((m <tanke_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robots_msg-msg:plat-val is deprecated.  Use robots_msg-msg:plat instead.")
  (plat m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <tanke_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robots_msg-msg:status-val is deprecated.  Use robots_msg-msg:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <tanke_msg>) ostream)
  "Serializes a message object of type '<tanke_msg>"
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
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'motor1) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'motor3) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'motor2) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'motor4) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'camera) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'sensor_lidar) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'plat) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'status))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <tanke_msg>) istream)
  "Deserializes a message object of type '<tanke_msg>"
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
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'motor1) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'motor3) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'motor2) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'motor4) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'camera) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'sensor_lidar) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'plat) istream)
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<tanke_msg>)))
  "Returns string type for a message object of type '<tanke_msg>"
  "robots_msg/tanke_msg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'tanke_msg)))
  "Returns string type for a message object of type 'tanke_msg"
  "robots_msg/tanke_msg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<tanke_msg>)))
  "Returns md5sum for a message object of type '<tanke_msg>"
  "12f0edb48ed4bd04ea82e5f45e0f4635")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'tanke_msg)))
  "Returns md5sum for a message object of type 'tanke_msg"
  "12f0edb48ed4bd04ea82e5f45e0f4635")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<tanke_msg>)))
  "Returns full string definition for message of type '<tanke_msg>"
  (cl:format cl:nil "string type # type of robot “TANKE20”~%string ip # address of the robot ESP8866~%uint32 port # Port for comunication~%uint8 id # identyti of robot a uint8_t~%uint8 inst_before # the last instruction runner ~%float32 battery # % of the battery~%robots_msg/motor motor1 # motor_left in ecology~%robots_msg/motor motor3 # motor_right in ecology~%robots_msg/motor motor2 # only tanke20~%robots_msg/motor motor4 # only tanke20~%robots_msg/jevois camera # Aruco info~%robots_msg/lidar sensor_lidar # only one value or ~%robots_msg/platform plat~%string status # \"Completed\" or \"Error tipo 2\"~%================================================================================~%MSG: robots_msg/motor~%uint8 speed # 0..255 to ecology20 and 0..180 to tanke20~%uint8 dir # 0 stop 1:CW 2:CCW~%int16 pos # position ~%~%================================================================================~%MSG: robots_msg/jevois~%string type~%uint8 id~%int16 targx #coordinate x~%int16 targy #coordinate y~%int16 targw # weight of fiducial~%int16 targh # hight of fiducial~%~%================================================================================~%MSG: robots_msg/lidar~%int16 position~%int16 range~%~%================================================================================~%MSG: robots_msg/platform~%string action # the actions are 'MOVING_UP', 'MOVING_DOWN', 'STOP'~%bool up #  True when is up~%bool down # True when is down ~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'tanke_msg)))
  "Returns full string definition for message of type 'tanke_msg"
  (cl:format cl:nil "string type # type of robot “TANKE20”~%string ip # address of the robot ESP8866~%uint32 port # Port for comunication~%uint8 id # identyti of robot a uint8_t~%uint8 inst_before # the last instruction runner ~%float32 battery # % of the battery~%robots_msg/motor motor1 # motor_left in ecology~%robots_msg/motor motor3 # motor_right in ecology~%robots_msg/motor motor2 # only tanke20~%robots_msg/motor motor4 # only tanke20~%robots_msg/jevois camera # Aruco info~%robots_msg/lidar sensor_lidar # only one value or ~%robots_msg/platform plat~%string status # \"Completed\" or \"Error tipo 2\"~%================================================================================~%MSG: robots_msg/motor~%uint8 speed # 0..255 to ecology20 and 0..180 to tanke20~%uint8 dir # 0 stop 1:CW 2:CCW~%int16 pos # position ~%~%================================================================================~%MSG: robots_msg/jevois~%string type~%uint8 id~%int16 targx #coordinate x~%int16 targy #coordinate y~%int16 targw # weight of fiducial~%int16 targh # hight of fiducial~%~%================================================================================~%MSG: robots_msg/lidar~%int16 position~%int16 range~%~%================================================================================~%MSG: robots_msg/platform~%string action # the actions are 'MOVING_UP', 'MOVING_DOWN', 'STOP'~%bool up #  True when is up~%bool down # True when is down ~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <tanke_msg>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'type))
     4 (cl:length (cl:slot-value msg 'ip))
     4
     1
     1
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'motor1))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'motor3))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'motor2))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'motor4))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'camera))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'sensor_lidar))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'plat))
     4 (cl:length (cl:slot-value msg 'status))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <tanke_msg>))
  "Converts a ROS message object to a list"
  (cl:list 'tanke_msg
    (cl:cons ':type (type msg))
    (cl:cons ':ip (ip msg))
    (cl:cons ':port (port msg))
    (cl:cons ':id (id msg))
    (cl:cons ':inst_before (inst_before msg))
    (cl:cons ':battery (battery msg))
    (cl:cons ':motor1 (motor1 msg))
    (cl:cons ':motor3 (motor3 msg))
    (cl:cons ':motor2 (motor2 msg))
    (cl:cons ':motor4 (motor4 msg))
    (cl:cons ':camera (camera msg))
    (cl:cons ':sensor_lidar (sensor_lidar msg))
    (cl:cons ':plat (plat msg))
    (cl:cons ':status (status msg))
))
