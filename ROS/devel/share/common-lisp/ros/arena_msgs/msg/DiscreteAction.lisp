; Auto-generated. Do not edit!


(cl:in-package arena_msgs-msg)


;//! \htmlinclude DiscreteAction.msg.html

(cl:defclass <DiscreteAction> (roslisp-msg-protocol:ros-message)
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

(cl:defclass DiscreteAction (<DiscreteAction>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DiscreteAction>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DiscreteAction)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name arena_msgs-msg:<DiscreteAction> is deprecated: use arena_msgs-msg:DiscreteAction instead.")))

(cl:ensure-generic-function 'robot_id-val :lambda-list '(m))
(cl:defmethod robot_id-val ((m <DiscreteAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arena_msgs-msg:robot_id-val is deprecated.  Use arena_msgs-msg:robot_id instead.")
  (robot_id m))

(cl:ensure-generic-function 'action-val :lambda-list '(m))
(cl:defmethod action-val ((m <DiscreteAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arena_msgs-msg:action-val is deprecated.  Use arena_msgs-msg:action instead.")
  (action m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DiscreteAction>) ostream)
  "Serializes a message object of type '<DiscreteAction>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DiscreteAction>) istream)
  "Deserializes a message object of type '<DiscreteAction>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DiscreteAction>)))
  "Returns string type for a message object of type '<DiscreteAction>"
  "arena_msgs/DiscreteAction")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DiscreteAction)))
  "Returns string type for a message object of type 'DiscreteAction"
  "arena_msgs/DiscreteAction")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DiscreteAction>)))
  "Returns md5sum for a message object of type '<DiscreteAction>"
  "b521f11e88571246b003b95decc73bfa")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DiscreteAction)))
  "Returns md5sum for a message object of type 'DiscreteAction"
  "b521f11e88571246b003b95decc73bfa")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DiscreteAction>)))
  "Returns full string definition for message of type '<DiscreteAction>"
  (cl:format cl:nil "# DiscreteAction~%~%# Provide information about the type of action the robot will perform~%# Robot id~%string robot_id~%~%# Discrete action~%string action~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DiscreteAction)))
  "Returns full string definition for message of type 'DiscreteAction"
  (cl:format cl:nil "# DiscreteAction~%~%# Provide information about the type of action the robot will perform~%# Robot id~%string robot_id~%~%# Discrete action~%string action~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DiscreteAction>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'robot_id))
     4 (cl:length (cl:slot-value msg 'action))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DiscreteAction>))
  "Converts a ROS message object to a list"
  (cl:list 'DiscreteAction
    (cl:cons ':robot_id (robot_id msg))
    (cl:cons ':action (action msg))
))
