; Auto-generated. Do not edit!


(cl:in-package robots_msg-msg)


;//! \htmlinclude continuous_action.msg.html

(cl:defclass <continuous_action> (roslisp-msg-protocol:ros-message)
  ((robot_id
    :reader robot_id
    :initarg :robot_id
    :type cl:string
    :initform "")
   (left_motor
    :reader left_motor
    :initarg :left_motor
    :type cl:float
    :initform 0.0)
   (right_motor
    :reader right_motor
    :initarg :right_motor
    :type cl:float
    :initform 0.0))
)

(cl:defclass continuous_action (<continuous_action>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <continuous_action>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'continuous_action)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robots_msg-msg:<continuous_action> is deprecated: use robots_msg-msg:continuous_action instead.")))

(cl:ensure-generic-function 'robot_id-val :lambda-list '(m))
(cl:defmethod robot_id-val ((m <continuous_action>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robots_msg-msg:robot_id-val is deprecated.  Use robots_msg-msg:robot_id instead.")
  (robot_id m))

(cl:ensure-generic-function 'left_motor-val :lambda-list '(m))
(cl:defmethod left_motor-val ((m <continuous_action>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robots_msg-msg:left_motor-val is deprecated.  Use robots_msg-msg:left_motor instead.")
  (left_motor m))

(cl:ensure-generic-function 'right_motor-val :lambda-list '(m))
(cl:defmethod right_motor-val ((m <continuous_action>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robots_msg-msg:right_motor-val is deprecated.  Use robots_msg-msg:right_motor instead.")
  (right_motor m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <continuous_action>) ostream)
  "Serializes a message object of type '<continuous_action>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'robot_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'robot_id))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'left_motor))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'right_motor))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <continuous_action>) istream)
  "Deserializes a message object of type '<continuous_action>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'robot_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'robot_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'left_motor) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'right_motor) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<continuous_action>)))
  "Returns string type for a message object of type '<continuous_action>"
  "robots_msg/continuous_action")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'continuous_action)))
  "Returns string type for a message object of type 'continuous_action"
  "robots_msg/continuous_action")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<continuous_action>)))
  "Returns md5sum for a message object of type '<continuous_action>"
  "4fc9c8444f1e9ed5a0212e0b05e258d4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'continuous_action)))
  "Returns md5sum for a message object of type 'continuous_action"
  "4fc9c8444f1e9ed5a0212e0b05e258d4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<continuous_action>)))
  "Returns full string definition for message of type '<continuous_action>"
  (cl:format cl:nil "# ContinuousAction~%~%# Provide information about the type of action the robot will perform~%# Robot id~%string robot_id~%~%# Continuous action~%float32 left_motor~%float32 right_motor~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'continuous_action)))
  "Returns full string definition for message of type 'continuous_action"
  (cl:format cl:nil "# ContinuousAction~%~%# Provide information about the type of action the robot will perform~%# Robot id~%string robot_id~%~%# Continuous action~%float32 left_motor~%float32 right_motor~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <continuous_action>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'robot_id))
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <continuous_action>))
  "Converts a ROS message object to a list"
  (cl:list 'continuous_action
    (cl:cons ':robot_id (robot_id msg))
    (cl:cons ':left_motor (left_motor msg))
    (cl:cons ':right_motor (right_motor msg))
))
