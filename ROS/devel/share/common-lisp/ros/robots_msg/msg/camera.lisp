; Auto-generated. Do not edit!


(cl:in-package robots_msg-msg)


;//! \htmlinclude camera.msg.html

(cl:defclass <camera> (roslisp-msg-protocol:ros-message)
  ((detect
    :reader detect
    :initarg :detect
    :type cl:fixnum
    :initform 0)
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
   (data
    :reader data
    :initarg :data
    :type cl:string
    :initform ""))
)

(cl:defclass camera (<camera>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <camera>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'camera)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robots_msg-msg:<camera> is deprecated: use robots_msg-msg:camera instead.")))

(cl:ensure-generic-function 'detect-val :lambda-list '(m))
(cl:defmethod detect-val ((m <camera>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robots_msg-msg:detect-val is deprecated.  Use robots_msg-msg:detect instead.")
  (detect m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <camera>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robots_msg-msg:id-val is deprecated.  Use robots_msg-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'targx-val :lambda-list '(m))
(cl:defmethod targx-val ((m <camera>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robots_msg-msg:targx-val is deprecated.  Use robots_msg-msg:targx instead.")
  (targx m))

(cl:ensure-generic-function 'targy-val :lambda-list '(m))
(cl:defmethod targy-val ((m <camera>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robots_msg-msg:targy-val is deprecated.  Use robots_msg-msg:targy instead.")
  (targy m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <camera>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robots_msg-msg:data-val is deprecated.  Use robots_msg-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <camera>) ostream)
  "Serializes a message object of type '<camera>"
  (cl:let* ((signed (cl:slot-value msg 'detect)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'targx)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'targy)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <camera>) istream)
  "Deserializes a message object of type '<camera>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'detect) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'targx) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'targy) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'data) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'data) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<camera>)))
  "Returns string type for a message object of type '<camera>"
  "robots_msg/camera")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'camera)))
  "Returns string type for a message object of type 'camera"
  "robots_msg/camera")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<camera>)))
  "Returns md5sum for a message object of type '<camera>"
  "1b522f111dbe5395cc09d642ba25bfa6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'camera)))
  "Returns md5sum for a message object of type 'camera"
  "1b522f111dbe5395cc09d642ba25bfa6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<camera>)))
  "Returns full string definition for message of type '<camera>"
  (cl:format cl:nil "int8 detect  # 1 : detect, 0 : non detect    ~%uint8 id  # id of fiducial~%int16 targx  # coordinate x~%int16 targy  # coordinate y~%string data  # all info in string~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'camera)))
  "Returns full string definition for message of type 'camera"
  (cl:format cl:nil "int8 detect  # 1 : detect, 0 : non detect    ~%uint8 id  # id of fiducial~%int16 targx  # coordinate x~%int16 targy  # coordinate y~%string data  # all info in string~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <camera>))
  (cl:+ 0
     1
     1
     2
     2
     4 (cl:length (cl:slot-value msg 'data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <camera>))
  "Converts a ROS message object to a list"
  (cl:list 'camera
    (cl:cons ':detect (detect msg))
    (cl:cons ':id (id msg))
    (cl:cons ':targx (targx msg))
    (cl:cons ':targy (targy msg))
    (cl:cons ':data (data msg))
))
