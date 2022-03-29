; Auto-generated. Do not edit!


(cl:in-package arena_msgs-msg)


;//! \htmlinclude ColorDetected.msg.html

(cl:defclass <ColorDetected> (roslisp-msg-protocol:ros-message)
  ((robot_id
    :reader robot_id
    :initarg :robot_id
    :type cl:string
    :initform "")
   (color
    :reader color
    :initarg :color
    :type cl:string
    :initform ""))
)

(cl:defclass ColorDetected (<ColorDetected>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ColorDetected>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ColorDetected)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name arena_msgs-msg:<ColorDetected> is deprecated: use arena_msgs-msg:ColorDetected instead.")))

(cl:ensure-generic-function 'robot_id-val :lambda-list '(m))
(cl:defmethod robot_id-val ((m <ColorDetected>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arena_msgs-msg:robot_id-val is deprecated.  Use arena_msgs-msg:robot_id instead.")
  (robot_id m))

(cl:ensure-generic-function 'color-val :lambda-list '(m))
(cl:defmethod color-val ((m <ColorDetected>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arena_msgs-msg:color-val is deprecated.  Use arena_msgs-msg:color instead.")
  (color m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ColorDetected>) ostream)
  "Serializes a message object of type '<ColorDetected>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'robot_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'robot_id))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'color))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'color))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ColorDetected>) istream)
  "Deserializes a message object of type '<ColorDetected>"
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
      (cl:setf (cl:slot-value msg 'color) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'color) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ColorDetected>)))
  "Returns string type for a message object of type '<ColorDetected>"
  "arena_msgs/ColorDetected")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ColorDetected)))
  "Returns string type for a message object of type 'ColorDetected"
  "arena_msgs/ColorDetected")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ColorDetected>)))
  "Returns md5sum for a message object of type '<ColorDetected>"
  "2a781930af9459f434d13917270bb087")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ColorDetected)))
  "Returns md5sum for a message object of type 'ColorDetected"
  "2a781930af9459f434d13917270bb087")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ColorDetected>)))
  "Returns full string definition for message of type '<ColorDetected>"
  (cl:format cl:nil "# ColorDetected~%~%# Provide information about the dominant color of the current visual input~%~%# Robot id~%string robot_id~%~%# Detected color~%string color~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ColorDetected)))
  "Returns full string definition for message of type 'ColorDetected"
  (cl:format cl:nil "# ColorDetected~%~%# Provide information about the dominant color of the current visual input~%~%# Robot id~%string robot_id~%~%# Detected color~%string color~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ColorDetected>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'robot_id))
     4 (cl:length (cl:slot-value msg 'color))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ColorDetected>))
  "Converts a ROS message object to a list"
  (cl:list 'ColorDetected
    (cl:cons ':robot_id (robot_id msg))
    (cl:cons ':color (color msg))
))
