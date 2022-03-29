; Auto-generated. Do not edit!


(cl:in-package robots_msg-msg)


;//! \htmlinclude cmd_robot_msg.msg.html

(cl:defclass <cmd_robot_msg> (roslisp-msg-protocol:ros-message)
  ((ip
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
   (instruction
    :reader instruction
    :initarg :instruction
    :type cl:fixnum
    :initform 0)
   (op1
    :reader op1
    :initarg :op1
    :type cl:fixnum
    :initform 0)
   (op2
    :reader op2
    :initarg :op2
    :type cl:fixnum
    :initform 0)
   (op3
    :reader op3
    :initarg :op3
    :type cl:fixnum
    :initform 0)
   (op4
    :reader op4
    :initarg :op4
    :type cl:fixnum
    :initform 0)
   (op5
    :reader op5
    :initarg :op5
    :type cl:fixnum
    :initform 0))
)

(cl:defclass cmd_robot_msg (<cmd_robot_msg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <cmd_robot_msg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'cmd_robot_msg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robots_msg-msg:<cmd_robot_msg> is deprecated: use robots_msg-msg:cmd_robot_msg instead.")))

(cl:ensure-generic-function 'ip-val :lambda-list '(m))
(cl:defmethod ip-val ((m <cmd_robot_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robots_msg-msg:ip-val is deprecated.  Use robots_msg-msg:ip instead.")
  (ip m))

(cl:ensure-generic-function 'port-val :lambda-list '(m))
(cl:defmethod port-val ((m <cmd_robot_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robots_msg-msg:port-val is deprecated.  Use robots_msg-msg:port instead.")
  (port m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <cmd_robot_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robots_msg-msg:id-val is deprecated.  Use robots_msg-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'instruction-val :lambda-list '(m))
(cl:defmethod instruction-val ((m <cmd_robot_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robots_msg-msg:instruction-val is deprecated.  Use robots_msg-msg:instruction instead.")
  (instruction m))

(cl:ensure-generic-function 'op1-val :lambda-list '(m))
(cl:defmethod op1-val ((m <cmd_robot_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robots_msg-msg:op1-val is deprecated.  Use robots_msg-msg:op1 instead.")
  (op1 m))

(cl:ensure-generic-function 'op2-val :lambda-list '(m))
(cl:defmethod op2-val ((m <cmd_robot_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robots_msg-msg:op2-val is deprecated.  Use robots_msg-msg:op2 instead.")
  (op2 m))

(cl:ensure-generic-function 'op3-val :lambda-list '(m))
(cl:defmethod op3-val ((m <cmd_robot_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robots_msg-msg:op3-val is deprecated.  Use robots_msg-msg:op3 instead.")
  (op3 m))

(cl:ensure-generic-function 'op4-val :lambda-list '(m))
(cl:defmethod op4-val ((m <cmd_robot_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robots_msg-msg:op4-val is deprecated.  Use robots_msg-msg:op4 instead.")
  (op4 m))

(cl:ensure-generic-function 'op5-val :lambda-list '(m))
(cl:defmethod op5-val ((m <cmd_robot_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robots_msg-msg:op5-val is deprecated.  Use robots_msg-msg:op5 instead.")
  (op5 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <cmd_robot_msg>) ostream)
  "Serializes a message object of type '<cmd_robot_msg>"
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
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'instruction)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'op1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'op2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'op3)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'op4)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'op5)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <cmd_robot_msg>) istream)
  "Deserializes a message object of type '<cmd_robot_msg>"
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
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'instruction)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'op1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'op2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'op3)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'op4)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'op5)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<cmd_robot_msg>)))
  "Returns string type for a message object of type '<cmd_robot_msg>"
  "robots_msg/cmd_robot_msg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'cmd_robot_msg)))
  "Returns string type for a message object of type 'cmd_robot_msg"
  "robots_msg/cmd_robot_msg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<cmd_robot_msg>)))
  "Returns md5sum for a message object of type '<cmd_robot_msg>"
  "2c4d416eead0976d4457c7ea5840b85f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'cmd_robot_msg)))
  "Returns md5sum for a message object of type 'cmd_robot_msg"
  "2c4d416eead0976d4457c7ea5840b85f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<cmd_robot_msg>)))
  "Returns full string definition for message of type '<cmd_robot_msg>"
  (cl:format cl:nil "string ip # address of the robot ESP8866~%uint32 port # Port for comunication~%uint8 id # identyti of robot a uint8_t~%uint8 instruction # instruction ~%uint8 op1~%uint8 op2 ~%uint8 op3~%uint8 op4~%uint8 op5~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'cmd_robot_msg)))
  "Returns full string definition for message of type 'cmd_robot_msg"
  (cl:format cl:nil "string ip # address of the robot ESP8866~%uint32 port # Port for comunication~%uint8 id # identyti of robot a uint8_t~%uint8 instruction # instruction ~%uint8 op1~%uint8 op2 ~%uint8 op3~%uint8 op4~%uint8 op5~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <cmd_robot_msg>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'ip))
     4
     1
     1
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <cmd_robot_msg>))
  "Converts a ROS message object to a list"
  (cl:list 'cmd_robot_msg
    (cl:cons ':ip (ip msg))
    (cl:cons ':port (port msg))
    (cl:cons ':id (id msg))
    (cl:cons ':instruction (instruction msg))
    (cl:cons ':op1 (op1 msg))
    (cl:cons ':op2 (op2 msg))
    (cl:cons ':op3 (op3 msg))
    (cl:cons ':op4 (op4 msg))
    (cl:cons ':op5 (op5 msg))
))
