; Auto-generated. Do not edit!


(cl:in-package robots_msg-msg)


;//! \htmlinclude lidar.msg.html

(cl:defclass <lidar> (roslisp-msg-protocol:ros-message)
  ((position
    :reader position
    :initarg :position
    :type cl:fixnum
    :initform 0)
   (range
    :reader range
    :initarg :range
    :type cl:fixnum
    :initform 0))
)

(cl:defclass lidar (<lidar>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <lidar>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'lidar)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robots_msg-msg:<lidar> is deprecated: use robots_msg-msg:lidar instead.")))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <lidar>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robots_msg-msg:position-val is deprecated.  Use robots_msg-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'range-val :lambda-list '(m))
(cl:defmethod range-val ((m <lidar>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robots_msg-msg:range-val is deprecated.  Use robots_msg-msg:range instead.")
  (range m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <lidar>) ostream)
  "Serializes a message object of type '<lidar>"
  (cl:let* ((signed (cl:slot-value msg 'position)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'range)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <lidar>) istream)
  "Deserializes a message object of type '<lidar>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'position) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'range) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<lidar>)))
  "Returns string type for a message object of type '<lidar>"
  "robots_msg/lidar")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'lidar)))
  "Returns string type for a message object of type 'lidar"
  "robots_msg/lidar")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<lidar>)))
  "Returns md5sum for a message object of type '<lidar>"
  "5060fc4ab83a253ef9abef852a44d0ad")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'lidar)))
  "Returns md5sum for a message object of type 'lidar"
  "5060fc4ab83a253ef9abef852a44d0ad")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<lidar>)))
  "Returns full string definition for message of type '<lidar>"
  (cl:format cl:nil "int16 position~%int16 range~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'lidar)))
  "Returns full string definition for message of type 'lidar"
  (cl:format cl:nil "int16 position~%int16 range~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <lidar>))
  (cl:+ 0
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <lidar>))
  "Converts a ROS message object to a list"
  (cl:list 'lidar
    (cl:cons ':position (position msg))
    (cl:cons ':range (range msg))
))
