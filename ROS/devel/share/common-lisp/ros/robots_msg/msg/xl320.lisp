; Auto-generated. Do not edit!


(cl:in-package robots_msg-msg)


;//! \htmlinclude xl320.msg.html

(cl:defclass <xl320> (roslisp-msg-protocol:ros-message)
  ((ID
    :reader ID
    :initarg :ID
    :type cl:fixnum
    :initform 0)
   (LED
    :reader LED
    :initarg :LED
    :type cl:fixnum
    :initform 0)
   (speed
    :reader speed
    :initarg :speed
    :type cl:fixnum
    :initform 0)
   (Goal_Position
    :reader Goal_Position
    :initarg :Goal_Position
    :type cl:fixnum
    :initform 0)
   (Present_Position
    :reader Present_Position
    :initarg :Present_Position
    :type cl:fixnum
    :initform 0))
)

(cl:defclass xl320 (<xl320>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <xl320>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'xl320)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robots_msg-msg:<xl320> is deprecated: use robots_msg-msg:xl320 instead.")))

(cl:ensure-generic-function 'ID-val :lambda-list '(m))
(cl:defmethod ID-val ((m <xl320>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robots_msg-msg:ID-val is deprecated.  Use robots_msg-msg:ID instead.")
  (ID m))

(cl:ensure-generic-function 'LED-val :lambda-list '(m))
(cl:defmethod LED-val ((m <xl320>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robots_msg-msg:LED-val is deprecated.  Use robots_msg-msg:LED instead.")
  (LED m))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <xl320>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robots_msg-msg:speed-val is deprecated.  Use robots_msg-msg:speed instead.")
  (speed m))

(cl:ensure-generic-function 'Goal_Position-val :lambda-list '(m))
(cl:defmethod Goal_Position-val ((m <xl320>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robots_msg-msg:Goal_Position-val is deprecated.  Use robots_msg-msg:Goal_Position instead.")
  (Goal_Position m))

(cl:ensure-generic-function 'Present_Position-val :lambda-list '(m))
(cl:defmethod Present_Position-val ((m <xl320>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robots_msg-msg:Present_Position-val is deprecated.  Use robots_msg-msg:Present_Position instead.")
  (Present_Position m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <xl320>) ostream)
  "Serializes a message object of type '<xl320>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'LED)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'speed)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'speed)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Goal_Position)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'Goal_Position)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Present_Position)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'Present_Position)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <xl320>) istream)
  "Deserializes a message object of type '<xl320>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'LED)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'speed)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'speed)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Goal_Position)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'Goal_Position)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Present_Position)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'Present_Position)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<xl320>)))
  "Returns string type for a message object of type '<xl320>"
  "robots_msg/xl320")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'xl320)))
  "Returns string type for a message object of type 'xl320"
  "robots_msg/xl320")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<xl320>)))
  "Returns md5sum for a message object of type '<xl320>"
  "67fe2fb91485e549cd0ff16b0e5b40e4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'xl320)))
  "Returns md5sum for a message object of type 'xl320"
  "67fe2fb91485e549cd0ff16b0e5b40e4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<xl320>)))
  "Returns full string definition for message of type '<xl320>"
  (cl:format cl:nil "uint8  ID~%uint8  LED~%uint16 speed~%uint16 Goal_Position~%uint16 Present_Position~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'xl320)))
  "Returns full string definition for message of type 'xl320"
  (cl:format cl:nil "uint8  ID~%uint8  LED~%uint16 speed~%uint16 Goal_Position~%uint16 Present_Position~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <xl320>))
  (cl:+ 0
     1
     1
     2
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <xl320>))
  "Converts a ROS message object to a list"
  (cl:list 'xl320
    (cl:cons ':ID (ID msg))
    (cl:cons ':LED (LED msg))
    (cl:cons ':speed (speed msg))
    (cl:cons ':Goal_Position (Goal_Position msg))
    (cl:cons ':Present_Position (Present_Position msg))
))
