; Auto-generated. Do not edit!


(cl:in-package robots_msg-msg)


;//! \htmlinclude jevois.msg.html

(cl:defclass <jevois> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type cl:string
    :initform "")
   (id
    :reader id
    :initarg :id
    :type cl:fixnum
    :initform 0)
   (targx
    :reader targx
    :initarg :targx
    :type cl:fixnum
    :initform 0)
   (targy
    :reader targy
    :initarg :targy
    :type cl:fixnum
    :initform 0)
   (targw
    :reader targw
    :initarg :targw
    :type cl:fixnum
    :initform 0)
   (targh
    :reader targh
    :initarg :targh
    :type cl:fixnum
    :initform 0))
)

(cl:defclass jevois (<jevois>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <jevois>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'jevois)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robots_msg-msg:<jevois> is deprecated: use robots_msg-msg:jevois instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <jevois>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robots_msg-msg:type-val is deprecated.  Use robots_msg-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <jevois>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robots_msg-msg:id-val is deprecated.  Use robots_msg-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'targx-val :lambda-list '(m))
(cl:defmethod targx-val ((m <jevois>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robots_msg-msg:targx-val is deprecated.  Use robots_msg-msg:targx instead.")
  (targx m))

(cl:ensure-generic-function 'targy-val :lambda-list '(m))
(cl:defmethod targy-val ((m <jevois>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robots_msg-msg:targy-val is deprecated.  Use robots_msg-msg:targy instead.")
  (targy m))

(cl:ensure-generic-function 'targw-val :lambda-list '(m))
(cl:defmethod targw-val ((m <jevois>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robots_msg-msg:targw-val is deprecated.  Use robots_msg-msg:targw instead.")
  (targw m))

(cl:ensure-generic-function 'targh-val :lambda-list '(m))
(cl:defmethod targh-val ((m <jevois>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robots_msg-msg:targh-val is deprecated.  Use robots_msg-msg:targh instead.")
  (targh m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <jevois>) ostream)
  "Serializes a message object of type '<jevois>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'type))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'targx)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'targy)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'targw)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'targh)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <jevois>) istream)
  "Deserializes a message object of type '<jevois>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'targx) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'targy) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'targw) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'targh) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<jevois>)))
  "Returns string type for a message object of type '<jevois>"
  "robots_msg/jevois")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'jevois)))
  "Returns string type for a message object of type 'jevois"
  "robots_msg/jevois")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<jevois>)))
  "Returns md5sum for a message object of type '<jevois>"
  "2e3dfb3b0880c65b6e878e5b7b7188e0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'jevois)))
  "Returns md5sum for a message object of type 'jevois"
  "2e3dfb3b0880c65b6e878e5b7b7188e0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<jevois>)))
  "Returns full string definition for message of type '<jevois>"
  (cl:format cl:nil "string type~%uint8 id~%int16 targx  # coordinate x~%int16 targy  # coordinate y~%int16 targw  # weight of fiducial~%int16 targh  # height of fiducial~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'jevois)))
  "Returns full string definition for message of type 'jevois"
  (cl:format cl:nil "string type~%uint8 id~%int16 targx  # coordinate x~%int16 targy  # coordinate y~%int16 targw  # weight of fiducial~%int16 targh  # height of fiducial~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <jevois>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'type))
     1
     2
     2
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <jevois>))
  "Converts a ROS message object to a list"
  (cl:list 'jevois
    (cl:cons ':type (type msg))
    (cl:cons ':id (id msg))
    (cl:cons ':targx (targx msg))
    (cl:cons ':targy (targy msg))
    (cl:cons ':targw (targw msg))
    (cl:cons ':targh (targh msg))
))
