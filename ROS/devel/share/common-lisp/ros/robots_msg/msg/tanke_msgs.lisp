; Auto-generated. Do not edit!


(cl:in-package robots_msg-msg)


;//! \htmlinclude tanke_msgs.msg.html

(cl:defclass <tanke_msgs> (roslisp-msg-protocol:ros-message)
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
   (range_c
    :reader range_c
    :initarg :range_c
    :type cl:fixnum
    :initform 0)
   (compas
    :reader compas
    :initarg :compas
    :type cl:fixnum
    :initform 0)
   (motor1
    :reader motor1
    :initarg :motor1
    :type cl:fixnum
    :initform 0)
   (motor3
    :reader motor3
    :initarg :motor3
    :type cl:fixnum
    :initform 0)
   (motor2
    :reader motor2
    :initarg :motor2
    :type cl:fixnum
    :initform 0)
   (motor4
    :reader motor4
    :initarg :motor4
    :type cl:fixnum
    :initform 0)
   (jevois
    :reader jevois
    :initarg :jevois
    :type robots_msg-msg:camera
    :initform (cl:make-instance 'robots_msg-msg:camera))
   (plat
    :reader plat
    :initarg :plat
    :type robots_msg-msg:plat
    :initform (cl:make-instance 'robots_msg-msg:plat))
   (status
    :reader status
    :initarg :status
    :type cl:string
    :initform ""))
)

(cl:defclass tanke_msgs (<tanke_msgs>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <tanke_msgs>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'tanke_msgs)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robots_msg-msg:<tanke_msgs> is deprecated: use robots_msg-msg:tanke_msgs instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <tanke_msgs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robots_msg-msg:type-val is deprecated.  Use robots_msg-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'ip-val :lambda-list '(m))
(cl:defmethod ip-val ((m <tanke_msgs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robots_msg-msg:ip-val is deprecated.  Use robots_msg-msg:ip instead.")
  (ip m))

(cl:ensure-generic-function 'port-val :lambda-list '(m))
(cl:defmethod port-val ((m <tanke_msgs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robots_msg-msg:port-val is deprecated.  Use robots_msg-msg:port instead.")
  (port m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <tanke_msgs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robots_msg-msg:id-val is deprecated.  Use robots_msg-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'inst_before-val :lambda-list '(m))
(cl:defmethod inst_before-val ((m <tanke_msgs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robots_msg-msg:inst_before-val is deprecated.  Use robots_msg-msg:inst_before instead.")
  (inst_before m))

(cl:ensure-generic-function 'battery-val :lambda-list '(m))
(cl:defmethod battery-val ((m <tanke_msgs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robots_msg-msg:battery-val is deprecated.  Use robots_msg-msg:battery instead.")
  (battery m))

(cl:ensure-generic-function 'range_c-val :lambda-list '(m))
(cl:defmethod range_c-val ((m <tanke_msgs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robots_msg-msg:range_c-val is deprecated.  Use robots_msg-msg:range_c instead.")
  (range_c m))

(cl:ensure-generic-function 'compas-val :lambda-list '(m))
(cl:defmethod compas-val ((m <tanke_msgs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robots_msg-msg:compas-val is deprecated.  Use robots_msg-msg:compas instead.")
  (compas m))

(cl:ensure-generic-function 'motor1-val :lambda-list '(m))
(cl:defmethod motor1-val ((m <tanke_msgs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robots_msg-msg:motor1-val is deprecated.  Use robots_msg-msg:motor1 instead.")
  (motor1 m))

(cl:ensure-generic-function 'motor3-val :lambda-list '(m))
(cl:defmethod motor3-val ((m <tanke_msgs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robots_msg-msg:motor3-val is deprecated.  Use robots_msg-msg:motor3 instead.")
  (motor3 m))

(cl:ensure-generic-function 'motor2-val :lambda-list '(m))
(cl:defmethod motor2-val ((m <tanke_msgs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robots_msg-msg:motor2-val is deprecated.  Use robots_msg-msg:motor2 instead.")
  (motor2 m))

(cl:ensure-generic-function 'motor4-val :lambda-list '(m))
(cl:defmethod motor4-val ((m <tanke_msgs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robots_msg-msg:motor4-val is deprecated.  Use robots_msg-msg:motor4 instead.")
  (motor4 m))

(cl:ensure-generic-function 'jevois-val :lambda-list '(m))
(cl:defmethod jevois-val ((m <tanke_msgs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robots_msg-msg:jevois-val is deprecated.  Use robots_msg-msg:jevois instead.")
  (jevois m))

(cl:ensure-generic-function 'plat-val :lambda-list '(m))
(cl:defmethod plat-val ((m <tanke_msgs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robots_msg-msg:plat-val is deprecated.  Use robots_msg-msg:plat instead.")
  (plat m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <tanke_msgs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robots_msg-msg:status-val is deprecated.  Use robots_msg-msg:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <tanke_msgs>) ostream)
  "Serializes a message object of type '<tanke_msgs>"
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
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'range_c)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'range_c)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'compas)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'motor1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'motor3)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'motor2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'motor4)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'jevois) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'plat) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'status))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <tanke_msgs>) istream)
  "Deserializes a message object of type '<tanke_msgs>"
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
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'range_c)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'range_c)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'compas) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'motor1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'motor3)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'motor2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'motor4)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'jevois) istream)
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<tanke_msgs>)))
  "Returns string type for a message object of type '<tanke_msgs>"
  "robots_msg/tanke_msgs")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'tanke_msgs)))
  "Returns string type for a message object of type 'tanke_msgs"
  "robots_msg/tanke_msgs")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<tanke_msgs>)))
  "Returns md5sum for a message object of type '<tanke_msgs>"
  "fa6b09dbb6438940f27323d40a64c654")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'tanke_msgs)))
  "Returns md5sum for a message object of type 'tanke_msgs"
  "fa6b09dbb6438940f27323d40a64c654")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<tanke_msgs>)))
  "Returns full string definition for message of type '<tanke_msgs>"
  (cl:format cl:nil "string type  # type of robot “TANKE20”~%string ip  # address of the robot ESP8866~%uint32 port  # port for communication~%uint8 id  # uint8_t id of the robot~%uint8 inst_before  # the last instruction runner ~%float32 battery  # % of the battery~%uint16 range_c  # laser sensor~%int16 compas  # heading~%uint8 motor1  # 0 : stop, 1 : CW, 2 : CCW FL~%uint8 motor3  # 0 : stop, 1 : CW, 2 : CCW BL~%uint8 motor2  # 0 : stop, 1 : CW, 2 : CCW FR~%uint8 motor4  # 0 : stop, 1 : CW, 2 : CCW BR~%robots_msg/camera jevois  # Aruco info~%robots_msg/plat plat~%string status  # \"Completed\" or \"Error type 2\"~%~%================================================================================~%MSG: robots_msg/camera~%int8 detect  # 1 : detect, 0 : non detect    ~%uint8 id  # id of fiducial~%int16 targx  # coordinate x~%int16 targy  # coordinate y~%string data  # all info in string~%~%================================================================================~%MSG: robots_msg/plat~%string action  # \"MOVING_UP\", \"MOVING_DOWN\", \"STOP\"~%uint8 status  # 1 : up, 0 : down~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'tanke_msgs)))
  "Returns full string definition for message of type 'tanke_msgs"
  (cl:format cl:nil "string type  # type of robot “TANKE20”~%string ip  # address of the robot ESP8866~%uint32 port  # port for communication~%uint8 id  # uint8_t id of the robot~%uint8 inst_before  # the last instruction runner ~%float32 battery  # % of the battery~%uint16 range_c  # laser sensor~%int16 compas  # heading~%uint8 motor1  # 0 : stop, 1 : CW, 2 : CCW FL~%uint8 motor3  # 0 : stop, 1 : CW, 2 : CCW BL~%uint8 motor2  # 0 : stop, 1 : CW, 2 : CCW FR~%uint8 motor4  # 0 : stop, 1 : CW, 2 : CCW BR~%robots_msg/camera jevois  # Aruco info~%robots_msg/plat plat~%string status  # \"Completed\" or \"Error type 2\"~%~%================================================================================~%MSG: robots_msg/camera~%int8 detect  # 1 : detect, 0 : non detect    ~%uint8 id  # id of fiducial~%int16 targx  # coordinate x~%int16 targy  # coordinate y~%string data  # all info in string~%~%================================================================================~%MSG: robots_msg/plat~%string action  # \"MOVING_UP\", \"MOVING_DOWN\", \"STOP\"~%uint8 status  # 1 : up, 0 : down~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <tanke_msgs>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'type))
     4 (cl:length (cl:slot-value msg 'ip))
     4
     1
     1
     4
     2
     2
     1
     1
     1
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'jevois))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'plat))
     4 (cl:length (cl:slot-value msg 'status))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <tanke_msgs>))
  "Converts a ROS message object to a list"
  (cl:list 'tanke_msgs
    (cl:cons ':type (type msg))
    (cl:cons ':ip (ip msg))
    (cl:cons ':port (port msg))
    (cl:cons ':id (id msg))
    (cl:cons ':inst_before (inst_before msg))
    (cl:cons ':battery (battery msg))
    (cl:cons ':range_c (range_c msg))
    (cl:cons ':compas (compas msg))
    (cl:cons ':motor1 (motor1 msg))
    (cl:cons ':motor3 (motor3 msg))
    (cl:cons ':motor2 (motor2 msg))
    (cl:cons ':motor4 (motor4 msg))
    (cl:cons ':jevois (jevois msg))
    (cl:cons ':plat (plat msg))
    (cl:cons ':status (status msg))
))
