; Auto-generated. Do not edit!


(cl:in-package arena_msgs-msg)


;//! \htmlinclude ProcessDeviceFeedback.msg.html

(cl:defclass <ProcessDeviceFeedback> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (state
    :reader state
    :initarg :state
    :type cl:fixnum
    :initform 0)
   (completion_estimate
    :reader completion_estimate
    :initarg :completion_estimate
    :type cl:real
    :initform 0))
)

(cl:defclass ProcessDeviceFeedback (<ProcessDeviceFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ProcessDeviceFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ProcessDeviceFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name arena_msgs-msg:<ProcessDeviceFeedback> is deprecated: use arena_msgs-msg:ProcessDeviceFeedback instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ProcessDeviceFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arena_msgs-msg:header-val is deprecated.  Use arena_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <ProcessDeviceFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arena_msgs-msg:state-val is deprecated.  Use arena_msgs-msg:state instead.")
  (state m))

(cl:ensure-generic-function 'completion_estimate-val :lambda-list '(m))
(cl:defmethod completion_estimate-val ((m <ProcessDeviceFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arena_msgs-msg:completion_estimate-val is deprecated.  Use arena_msgs-msg:completion_estimate instead.")
  (completion_estimate m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ProcessDeviceFeedback>) ostream)
  "Serializes a message object of type '<ProcessDeviceFeedback>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'state)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'completion_estimate)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'completion_estimate) (cl:floor (cl:slot-value msg 'completion_estimate)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ProcessDeviceFeedback>) istream)
  "Deserializes a message object of type '<ProcessDeviceFeedback>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'state) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'completion_estimate) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ProcessDeviceFeedback>)))
  "Returns string type for a message object of type '<ProcessDeviceFeedback>"
  "arena_msgs/ProcessDeviceFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ProcessDeviceFeedback)))
  "Returns string type for a message object of type 'ProcessDeviceFeedback"
  "arena_msgs/ProcessDeviceFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ProcessDeviceFeedback>)))
  "Returns md5sum for a message object of type '<ProcessDeviceFeedback>"
  "e0ce49fe5b96c02350562f7dccb8b34f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ProcessDeviceFeedback)))
  "Returns md5sum for a message object of type 'ProcessDeviceFeedback"
  "e0ce49fe5b96c02350562f7dccb8b34f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ProcessDeviceFeedback>)))
  "Returns full string definition for message of type '<ProcessDeviceFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%Header header~%~%# State~%int8 state~%~%# Completion estimate~%time completion_estimate~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ProcessDeviceFeedback)))
  "Returns full string definition for message of type 'ProcessDeviceFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%Header header~%~%# State~%int8 state~%~%# Completion estimate~%time completion_estimate~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ProcessDeviceFeedback>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ProcessDeviceFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'ProcessDeviceFeedback
    (cl:cons ':header (header msg))
    (cl:cons ':state (state msg))
    (cl:cons ':completion_estimate (completion_estimate msg))
))
