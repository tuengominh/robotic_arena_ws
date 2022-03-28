; Auto-generated. Do not edit!


(cl:in-package robots_msg-msg)


;//! \htmlinclude discrete_action.msg.html

(cl:defclass <discrete_action> (roslisp-msg-protocol:ros-message)
  ((robot_id
    :reader robot_id
    :initarg :robot_id
    :type cl:string
    :initform "")
   (action
    :reader action
    :initarg :action
    :type cl:string
    :initform ""))
)

(cl:defclass discrete_action (<discrete_action>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <discrete_action>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'discrete_action)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robots_msg-msg:<discrete_action> is deprecated: use robots_msg-msg:discrete_action instead.")))

(cl:ensure-generic-function 'robot_id-val :lambda-list '(m))
(cl:defmethod robot_id-val ((m <discrete_action>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robots_msg-msg:robot_id-val is deprecated.  Use robots_msg-msg:robot_id instead.")
  (robot_id m))

(cl:ensure-generic-function 'action-val :lambda-list '(m))
(cl:defmethod action-val ((m <discrete_action>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robots_msg-msg:action-val is deprecated.  Use robots_msg-msg:action instead.")
  (action m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <discrete_action>) ostream)
  "Serializes a message object of type '<discrete_action>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'robot_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'robot_id))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'action))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'action))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <discrete_action>) istream)
  "Deserializes a message object of type '<discrete_action>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'robot_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'robot_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'action) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'action) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<discrete_action>)))
  "Returns string type for a message object of type '<discrete_action>"
  "robots_msg/discrete_action")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'discrete_action)))
  "Returns string type for a message object of type 'discrete_action"
  "robots_msg/discrete_action")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<discrete_action>)))
  "Returns md5sum for a message object of type '<discrete_action>"
  "b521f11e88571246b003b95decc73bfa")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'discrete_action)))
  "Returns md5sum for a message object of type 'discrete_action"
  "b521f11e88571246b003b95decc73bfa")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<discrete_action>)))
  "Returns full string definition for message of type '<discrete_action>"
  (cl:format cl:nil "string robot_id~%string action~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'discrete_action)))
  "Returns full string definition for message of type 'discrete_action"
  (cl:format cl:nil "string robot_id~%string action~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <discrete_action>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'robot_id))
     4 (cl:length (cl:slot-value msg 'action))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <discrete_action>))
  "Converts a ROS message object to a list"
  (cl:list 'discrete_action
    (cl:cons ':robot_id (robot_id msg))
    (cl:cons ':action (action msg))
))
