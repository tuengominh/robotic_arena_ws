; Auto-generated. Do not edit!


(cl:in-package arena_msgs-msg)


;//! \htmlinclude ProcessDeviceGoal.msg.html

(cl:defclass <ProcessDeviceGoal> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (device_id
    :reader device_id
    :initarg :device_id
    :type cl:string
    :initform "")
   (device_instance_id
    :reader device_instance_id
    :initarg :device_instance_id
    :type cl:string
    :initform ""))
)

(cl:defclass ProcessDeviceGoal (<ProcessDeviceGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ProcessDeviceGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ProcessDeviceGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name arena_msgs-msg:<ProcessDeviceGoal> is deprecated: use arena_msgs-msg:ProcessDeviceGoal instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ProcessDeviceGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arena_msgs-msg:header-val is deprecated.  Use arena_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'device_id-val :lambda-list '(m))
(cl:defmethod device_id-val ((m <ProcessDeviceGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arena_msgs-msg:device_id-val is deprecated.  Use arena_msgs-msg:device_id instead.")
  (device_id m))

(cl:ensure-generic-function 'device_instance_id-val :lambda-list '(m))
(cl:defmethod device_instance_id-val ((m <ProcessDeviceGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arena_msgs-msg:device_instance_id-val is deprecated.  Use arena_msgs-msg:device_instance_id instead.")
  (device_instance_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ProcessDeviceGoal>) ostream)
  "Serializes a message object of type '<ProcessDeviceGoal>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'device_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'device_id))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'device_instance_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'device_instance_id))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ProcessDeviceGoal>) istream)
  "Deserializes a message object of type '<ProcessDeviceGoal>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'device_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'device_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'device_instance_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'device_instance_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ProcessDeviceGoal>)))
  "Returns string type for a message object of type '<ProcessDeviceGoal>"
  "arena_msgs/ProcessDeviceGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ProcessDeviceGoal)))
  "Returns string type for a message object of type 'ProcessDeviceGoal"
  "arena_msgs/ProcessDeviceGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ProcessDeviceGoal>)))
  "Returns md5sum for a message object of type '<ProcessDeviceGoal>"
  "9dfc0484f536d1205ff684272a362447")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ProcessDeviceGoal)))
  "Returns md5sum for a message object of type 'ProcessDeviceGoal"
  "9dfc0484f536d1205ff684272a362447")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ProcessDeviceGoal>)))
  "Returns full string definition for message of type '<ProcessDeviceGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%Header header~%~%# Device id~%string device_id~%~%# Device instance id~%string device_instance_id~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ProcessDeviceGoal)))
  "Returns full string definition for message of type 'ProcessDeviceGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%Header header~%~%# Device id~%string device_id~%~%# Device instance id~%string device_instance_id~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ProcessDeviceGoal>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'device_id))
     4 (cl:length (cl:slot-value msg 'device_instance_id))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ProcessDeviceGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'ProcessDeviceGoal
    (cl:cons ':header (header msg))
    (cl:cons ':device_id (device_id msg))
    (cl:cons ':device_instance_id (device_instance_id msg))
))
