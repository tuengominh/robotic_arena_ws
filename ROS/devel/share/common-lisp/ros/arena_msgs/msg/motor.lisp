; Auto-generated. Do not edit!


(cl:in-package arena_msgs-msg)


;//! \htmlinclude motor.msg.html

(cl:defclass <motor> (roslisp-msg-protocol:ros-message)
  ((speed
    :reader speed
    :initarg :speed
    :type cl:fixnum
    :initform 0)
   (dir
    :reader dir
    :initarg :dir
    :type cl:fixnum
    :initform 0)
   (pos
    :reader pos
    :initarg :pos
    :type cl:fixnum
    :initform 0))
)

(cl:defclass motor (<motor>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <motor>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'motor)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name arena_msgs-msg:<motor> is deprecated: use arena_msgs-msg:motor instead.")))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <motor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arena_msgs-msg:speed-val is deprecated.  Use arena_msgs-msg:speed instead.")
  (speed m))

(cl:ensure-generic-function 'dir-val :lambda-list '(m))
(cl:defmethod dir-val ((m <motor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arena_msgs-msg:dir-val is deprecated.  Use arena_msgs-msg:dir instead.")
  (dir m))

(cl:ensure-generic-function 'pos-val :lambda-list '(m))
(cl:defmethod pos-val ((m <motor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arena_msgs-msg:pos-val is deprecated.  Use arena_msgs-msg:pos instead.")
  (pos m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <motor>) ostream)
  "Serializes a message object of type '<motor>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'speed)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'dir)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'pos)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <motor>) istream)
  "Deserializes a message object of type '<motor>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'speed)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'dir)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pos) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<motor>)))
  "Returns string type for a message object of type '<motor>"
  "arena_msgs/motor")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'motor)))
  "Returns string type for a message object of type 'motor"
  "arena_msgs/motor")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<motor>)))
  "Returns md5sum for a message object of type '<motor>"
  "2fa8cbcf1466cb2e33624b31d90f1f01")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'motor)))
  "Returns md5sum for a message object of type 'motor"
  "2fa8cbcf1466cb2e33624b31d90f1f01")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<motor>)))
  "Returns full string definition for message of type '<motor>"
  (cl:format cl:nil "uint8 speed # 0..255 to ecology20 and 0..180 to tanke20~%uint8 dir # 0 stop 1:CW 2:CCW~%int16 pos # position ~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'motor)))
  "Returns full string definition for message of type 'motor"
  (cl:format cl:nil "uint8 speed # 0..255 to ecology20 and 0..180 to tanke20~%uint8 dir # 0 stop 1:CW 2:CCW~%int16 pos # position ~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <motor>))
  (cl:+ 0
     1
     1
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <motor>))
  "Converts a ROS message object to a list"
  (cl:list 'motor
    (cl:cons ':speed (speed msg))
    (cl:cons ':dir (dir msg))
    (cl:cons ':pos (pos msg))
))
