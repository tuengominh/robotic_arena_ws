; Auto-generated. Do not edit!


(cl:in-package arena_msgs-srv)


;//! \htmlinclude SendRobotCommand-request.msg.html

(cl:defclass <SendRobotCommand-request> (roslisp-msg-protocol:ros-message)
  ((command
    :reader command
    :initarg :command
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SendRobotCommand-request (<SendRobotCommand-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SendRobotCommand-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SendRobotCommand-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name arena_msgs-srv:<SendRobotCommand-request> is deprecated: use arena_msgs-srv:SendRobotCommand-request instead.")))

(cl:ensure-generic-function 'command-val :lambda-list '(m))
(cl:defmethod command-val ((m <SendRobotCommand-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arena_msgs-srv:command-val is deprecated.  Use arena_msgs-srv:command instead.")
  (command m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SendRobotCommand-request>) ostream)
  "Serializes a message object of type '<SendRobotCommand-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'command)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SendRobotCommand-request>) istream)
  "Deserializes a message object of type '<SendRobotCommand-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'command)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SendRobotCommand-request>)))
  "Returns string type for a service object of type '<SendRobotCommand-request>"
  "arena_msgs/SendRobotCommandRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SendRobotCommand-request)))
  "Returns string type for a service object of type 'SendRobotCommand-request"
  "arena_msgs/SendRobotCommandRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SendRobotCommand-request>)))
  "Returns md5sum for a message object of type '<SendRobotCommand-request>"
  "257718bad5e2af496975d318ff34944d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SendRobotCommand-request)))
  "Returns md5sum for a message object of type 'SendRobotCommand-request"
  "257718bad5e2af496975d318ff34944d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SendRobotCommand-request>)))
  "Returns full string definition for message of type '<SendRobotCommand-request>"
  (cl:format cl:nil "uint8 command		# task command to perform~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SendRobotCommand-request)))
  "Returns full string definition for message of type 'SendRobotCommand-request"
  (cl:format cl:nil "uint8 command		# task command to perform~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SendRobotCommand-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SendRobotCommand-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SendRobotCommand-request
    (cl:cons ':command (command msg))
))
;//! \htmlinclude SendRobotCommand-response.msg.html

(cl:defclass <SendRobotCommand-response> (roslisp-msg-protocol:ros-message)
  ((received
    :reader received
    :initarg :received
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SendRobotCommand-response (<SendRobotCommand-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SendRobotCommand-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SendRobotCommand-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name arena_msgs-srv:<SendRobotCommand-response> is deprecated: use arena_msgs-srv:SendRobotCommand-response instead.")))

(cl:ensure-generic-function 'received-val :lambda-list '(m))
(cl:defmethod received-val ((m <SendRobotCommand-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arena_msgs-srv:received-val is deprecated.  Use arena_msgs-srv:received instead.")
  (received m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SendRobotCommand-response>) ostream)
  "Serializes a message object of type '<SendRobotCommand-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'received)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SendRobotCommand-response>) istream)
  "Deserializes a message object of type '<SendRobotCommand-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'received)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SendRobotCommand-response>)))
  "Returns string type for a service object of type '<SendRobotCommand-response>"
  "arena_msgs/SendRobotCommandResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SendRobotCommand-response)))
  "Returns string type for a service object of type 'SendRobotCommand-response"
  "arena_msgs/SendRobotCommandResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SendRobotCommand-response>)))
  "Returns md5sum for a message object of type '<SendRobotCommand-response>"
  "257718bad5e2af496975d318ff34944d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SendRobotCommand-response)))
  "Returns md5sum for a message object of type 'SendRobotCommand-response"
  "257718bad5e2af496975d318ff34944d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SendRobotCommand-response>)))
  "Returns full string definition for message of type '<SendRobotCommand-response>"
  (cl:format cl:nil "uint8 received		# command received confirmation~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SendRobotCommand-response)))
  "Returns full string definition for message of type 'SendRobotCommand-response"
  (cl:format cl:nil "uint8 received		# command received confirmation~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SendRobotCommand-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SendRobotCommand-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SendRobotCommand-response
    (cl:cons ':received (received msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SendRobotCommand)))
  'SendRobotCommand-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SendRobotCommand)))
  'SendRobotCommand-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SendRobotCommand)))
  "Returns string type for a service object of type '<SendRobotCommand>"
  "arena_msgs/SendRobotCommand")