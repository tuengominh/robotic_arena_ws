; Auto-generated. Do not edit!


(cl:in-package robots_msg-msg)


;//! \htmlinclude platform.msg.html

(cl:defclass <platform> (roslisp-msg-protocol:ros-message)
  ((action
    :reader action
    :initarg :action
    :type cl:string
    :initform "")
   (up
    :reader up
    :initarg :up
    :type cl:boolean
    :initform cl:nil)
   (down
    :reader down
    :initarg :down
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass platform (<platform>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <platform>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'platform)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robots_msg-msg:<platform> is deprecated: use robots_msg-msg:platform instead.")))

(cl:ensure-generic-function 'action-val :lambda-list '(m))
(cl:defmethod action-val ((m <platform>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robots_msg-msg:action-val is deprecated.  Use robots_msg-msg:action instead.")
  (action m))

(cl:ensure-generic-function 'up-val :lambda-list '(m))
(cl:defmethod up-val ((m <platform>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robots_msg-msg:up-val is deprecated.  Use robots_msg-msg:up instead.")
  (up m))

(cl:ensure-generic-function 'down-val :lambda-list '(m))
(cl:defmethod down-val ((m <platform>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robots_msg-msg:down-val is deprecated.  Use robots_msg-msg:down instead.")
  (down m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <platform>) ostream)
  "Serializes a message object of type '<platform>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'action))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'action))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'up) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'down) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <platform>) istream)
  "Deserializes a message object of type '<platform>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'action) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'action) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'up) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'down) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<platform>)))
  "Returns string type for a message object of type '<platform>"
  "robots_msg/platform")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'platform)))
  "Returns string type for a message object of type 'platform"
  "robots_msg/platform")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<platform>)))
  "Returns md5sum for a message object of type '<platform>"
  "44b302fafd3aca89b85306b91c254349")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'platform)))
  "Returns md5sum for a message object of type 'platform"
  "44b302fafd3aca89b85306b91c254349")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<platform>)))
  "Returns full string definition for message of type '<platform>"
  (cl:format cl:nil "string action # the actions are 'MOVING_UP', 'MOVING_DOWN', 'STOP'~%bool up #  True when is up~%bool down # True when is down ~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'platform)))
  "Returns full string definition for message of type 'platform"
  (cl:format cl:nil "string action # the actions are 'MOVING_UP', 'MOVING_DOWN', 'STOP'~%bool up #  True when is up~%bool down # True when is down ~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <platform>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'action))
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <platform>))
  "Converts a ROS message object to a list"
  (cl:list 'platform
    (cl:cons ':action (action msg))
    (cl:cons ':up (up msg))
    (cl:cons ':down (down msg))
))
