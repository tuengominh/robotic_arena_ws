; Auto-generated. Do not edit!


(cl:in-package arena_msgs-msg)


;//! \htmlinclude eco_msg.msg.html

(cl:defclass <eco_msg> (roslisp-msg-protocol:ros-message)
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
   (tempe
    :reader tempe
    :initarg :tempe
    :type cl:float
    :initform 0.0)
   (line0
    :reader line0
    :initarg :line0
    :type cl:fixnum
    :initform 0)
   (line1
    :reader line1
    :initarg :line1
    :type cl:fixnum
    :initform 0)
   (motor1
    :reader motor1
    :initarg :motor1
    :type arena_msgs-msg:motor
    :initform (cl:make-instance 'arena_msgs-msg:motor))
   (motor2
    :reader motor2
    :initarg :motor2
    :type arena_msgs-msg:motor
    :initform (cl:make-instance 'arena_msgs-msg:motor))
   (camera
    :reader camera
    :initarg :camera
    :type arena_msgs-msg:jevois
    :initform (cl:make-instance 'arena_msgs-msg:jevois))
   (sensor_lidar
    :reader sensor_lidar
    :initarg :sensor_lidar
    :type arena_msgs-msg:lidar
    :initform (cl:make-instance 'arena_msgs-msg:lidar))
   (status
    :reader status
    :initarg :status
    :type cl:string
    :initform ""))
)

(cl:defclass eco_msg (<eco_msg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <eco_msg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'eco_msg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name arena_msgs-msg:<eco_msg> is deprecated: use arena_msgs-msg:eco_msg instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <eco_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arena_msgs-msg:type-val is deprecated.  Use arena_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'ip-val :lambda-list '(m))
(cl:defmethod ip-val ((m <eco_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arena_msgs-msg:ip-val is deprecated.  Use arena_msgs-msg:ip instead.")
  (ip m))

(cl:ensure-generic-function 'port-val :lambda-list '(m))
(cl:defmethod port-val ((m <eco_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arena_msgs-msg:port-val is deprecated.  Use arena_msgs-msg:port instead.")
  (port m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <eco_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arena_msgs-msg:id-val is deprecated.  Use arena_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'inst_before-val :lambda-list '(m))
(cl:defmethod inst_before-val ((m <eco_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arena_msgs-msg:inst_before-val is deprecated.  Use arena_msgs-msg:inst_before instead.")
  (inst_before m))

(cl:ensure-generic-function 'battery-val :lambda-list '(m))
(cl:defmethod battery-val ((m <eco_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arena_msgs-msg:battery-val is deprecated.  Use arena_msgs-msg:battery instead.")
  (battery m))

(cl:ensure-generic-function 'tempe-val :lambda-list '(m))
(cl:defmethod tempe-val ((m <eco_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arena_msgs-msg:tempe-val is deprecated.  Use arena_msgs-msg:tempe instead.")
  (tempe m))

(cl:ensure-generic-function 'line0-val :lambda-list '(m))
(cl:defmethod line0-val ((m <eco_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arena_msgs-msg:line0-val is deprecated.  Use arena_msgs-msg:line0 instead.")
  (line0 m))

(cl:ensure-generic-function 'line1-val :lambda-list '(m))
(cl:defmethod line1-val ((m <eco_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arena_msgs-msg:line1-val is deprecated.  Use arena_msgs-msg:line1 instead.")
  (line1 m))

(cl:ensure-generic-function 'motor1-val :lambda-list '(m))
(cl:defmethod motor1-val ((m <eco_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arena_msgs-msg:motor1-val is deprecated.  Use arena_msgs-msg:motor1 instead.")
  (motor1 m))

(cl:ensure-generic-function 'motor2-val :lambda-list '(m))
(cl:defmethod motor2-val ((m <eco_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arena_msgs-msg:motor2-val is deprecated.  Use arena_msgs-msg:motor2 instead.")
  (motor2 m))

(cl:ensure-generic-function 'camera-val :lambda-list '(m))
(cl:defmethod camera-val ((m <eco_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arena_msgs-msg:camera-val is deprecated.  Use arena_msgs-msg:camera instead.")
  (camera m))

(cl:ensure-generic-function 'sensor_lidar-val :lambda-list '(m))
(cl:defmethod sensor_lidar-val ((m <eco_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arena_msgs-msg:sensor_lidar-val is deprecated.  Use arena_msgs-msg:sensor_lidar instead.")
  (sensor_lidar m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <eco_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arena_msgs-msg:status-val is deprecated.  Use arena_msgs-msg:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <eco_msg>) ostream)
  "Serializes a message object of type '<eco_msg>"
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
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'tempe))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'line0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'line0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'line1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'line1)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'motor1) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'motor2) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'camera) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'sensor_lidar) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'status))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <eco_msg>) istream)
  "Deserializes a message object of type '<eco_msg>"
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
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'tempe) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'line0)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'line0)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'line1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'line1)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'motor1) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'motor2) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'camera) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'sensor_lidar) istream)
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<eco_msg>)))
  "Returns string type for a message object of type '<eco_msg>"
  "arena_msgs/eco_msg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'eco_msg)))
  "Returns string type for a message object of type 'eco_msg"
  "arena_msgs/eco_msg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<eco_msg>)))
  "Returns md5sum for a message object of type '<eco_msg>"
  "11c8a7147be0b5a11f6c147bd471ccda")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'eco_msg)))
  "Returns md5sum for a message object of type 'eco_msg"
  "11c8a7147be0b5a11f6c147bd471ccda")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<eco_msg>)))
  "Returns full string definition for message of type '<eco_msg>"
  (cl:format cl:nil "string type # type of robot “ECOLOGY20”~%string ip # address of the robot ESP8866~%uint32 port # Port for comunication~%uint8 id # identyti of robot a uint8_t~%uint8 inst_before # the last instruction runner ~%float32 battery # % of the battery~%float32 tempe # temperature sensor~%uint16 line0 # line sensor~%uint16 line1 ~%arena_msgs/motor motor1 # motor_left in ecology~%arena_msgs/motor motor2 # motor_right in ecology~%arena_msgs/jevois camera # Aruco info~%arena_msgs/lidar sensor_lidar # only one value or ~%string status # \"Completed\" or \"Error tipo 1\"~%~%================================================================================~%MSG: arena_msgs/motor~%uint8 speed # 0..255 to ecology20 and 0..180 to tanke20~%uint8 dir # 0 stop 1:CW 2:CCW~%int16 pos # position ~%~%~%================================================================================~%MSG: arena_msgs/jevois~%string type~%uint8 id~%int16 targx #coordinate x~%int16 targy #coordinate y~%int16 targw # weight of fiducial~%int16 targh # hight of fiducial~%~%================================================================================~%MSG: arena_msgs/lidar~%int16 position~%int16 range~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'eco_msg)))
  "Returns full string definition for message of type 'eco_msg"
  (cl:format cl:nil "string type # type of robot “ECOLOGY20”~%string ip # address of the robot ESP8866~%uint32 port # Port for comunication~%uint8 id # identyti of robot a uint8_t~%uint8 inst_before # the last instruction runner ~%float32 battery # % of the battery~%float32 tempe # temperature sensor~%uint16 line0 # line sensor~%uint16 line1 ~%arena_msgs/motor motor1 # motor_left in ecology~%arena_msgs/motor motor2 # motor_right in ecology~%arena_msgs/jevois camera # Aruco info~%arena_msgs/lidar sensor_lidar # only one value or ~%string status # \"Completed\" or \"Error tipo 1\"~%~%================================================================================~%MSG: arena_msgs/motor~%uint8 speed # 0..255 to ecology20 and 0..180 to tanke20~%uint8 dir # 0 stop 1:CW 2:CCW~%int16 pos # position ~%~%~%================================================================================~%MSG: arena_msgs/jevois~%string type~%uint8 id~%int16 targx #coordinate x~%int16 targy #coordinate y~%int16 targw # weight of fiducial~%int16 targh # hight of fiducial~%~%================================================================================~%MSG: arena_msgs/lidar~%int16 position~%int16 range~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <eco_msg>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'type))
     4 (cl:length (cl:slot-value msg 'ip))
     4
     1
     1
     4
     4
     2
     2
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'motor1))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'motor2))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'camera))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'sensor_lidar))
     4 (cl:length (cl:slot-value msg 'status))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <eco_msg>))
  "Converts a ROS message object to a list"
  (cl:list 'eco_msg
    (cl:cons ':type (type msg))
    (cl:cons ':ip (ip msg))
    (cl:cons ':port (port msg))
    (cl:cons ':id (id msg))
    (cl:cons ':inst_before (inst_before msg))
    (cl:cons ':battery (battery msg))
    (cl:cons ':tempe (tempe msg))
    (cl:cons ':line0 (line0 msg))
    (cl:cons ':line1 (line1 msg))
    (cl:cons ':motor1 (motor1 msg))
    (cl:cons ':motor2 (motor2 msg))
    (cl:cons ':camera (camera msg))
    (cl:cons ':sensor_lidar (sensor_lidar msg))
    (cl:cons ':status (status msg))
))
