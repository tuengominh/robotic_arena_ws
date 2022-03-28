; Auto-generated. Do not edit!


(cl:in-package robots_msg-msg)


;//! \htmlinclude plat.msg.html

(cl:defclass <plat> (roslisp-msg-protocol:ros-message)
  ((action
    :reader action
    :initarg :action
    :type cl:string
    :initform "")
   (status
    :reader status
    :initarg :status
    :type cl:fixnum
    :initform 0))
)

(cl:defclass plat (<plat>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <plat>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'plat)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robots_msg-msg:<plat> is deprecated: use robots_msg-msg:plat instead.")))

(cl:ensure-generic-function 'action-val :lambda-list '(m))
(cl:defmethod action-val ((m <plat>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robots_msg-msg:action-val is deprecated.  Use robots_msg-msg:action instead.")
  (action m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <plat>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robots_msg-msg:status-val is deprecated.  Use robots_msg-msg:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <plat>) ostream)
  "Serializes a message object of type '<plat>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'action))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'action))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <plat>) istream)
  "Deserializes a message object of type '<plat>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'action) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'action) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<plat>)))
  "Returns string type for a message object of type '<plat>"
  "robots_msg/plat")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'plat)))
  "Returns string type for a message object of type 'plat"
  "robots_msg/plat")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<plat>)))
  "Returns md5sum for a message object of type '<plat>"
  "317c41d290a095d0de64922627caccb7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'plat)))
  "Returns md5sum for a message object of type 'plat"
  "317c41d290a095d0de64922627caccb7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<plat>)))
  "Returns full string definition for message of type '<plat>"
  (cl:format cl:nil "string action  # \"MOVING_UP\", \"MOVING_DOWN\", \"STOP\"~%uint8 status  # 1 : up, 0 : down~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'plat)))
  "Returns full string definition for message of type 'plat"
  (cl:format cl:nil "string action  # \"MOVING_UP\", \"MOVING_DOWN\", \"STOP\"~%uint8 status  # 1 : up, 0 : down~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <plat>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'action))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <plat>))
  "Converts a ROS message object to a list"
  (cl:list 'plat
    (cl:cons ':action (action msg))
    (cl:cons ':status (status msg))
))
