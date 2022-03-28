; Auto-generated. Do not edit!


(cl:in-package robots_msg-msg)


;//! \htmlinclude target_data.msg.html

(cl:defclass <target_data> (roslisp-msg-protocol:ros-message)
  ((range_l
    :reader range_l
    :initarg :range_l
    :type cl:fixnum
    :initform 0)
   (range_c
    :reader range_c
    :initarg :range_c
    :type cl:fixnum
    :initform 0)
   (range_r
    :reader range_r
    :initarg :range_r
    :type cl:fixnum
    :initform 0)
   (n_food
    :reader n_food
    :initarg :n_food
    :type cl:fixnum
    :initform 0)
   (n_water
    :reader n_water
    :initarg :n_water
    :type cl:fixnum
    :initform 0)
   (targ_id
    :reader targ_id
    :initarg :targ_id
    :type cl:string
    :initform "")
   (targ_type
    :reader targ_type
    :initarg :targ_type
    :type cl:string
    :initform "")
   (targ_dist
    :reader targ_dist
    :initarg :targ_dist
    :type cl:float
    :initform 0.0)
   (targ_x
    :reader targ_x
    :initarg :targ_x
    :type cl:float
    :initform 0.0))
)

(cl:defclass target_data (<target_data>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <target_data>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'target_data)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robots_msg-msg:<target_data> is deprecated: use robots_msg-msg:target_data instead.")))

(cl:ensure-generic-function 'range_l-val :lambda-list '(m))
(cl:defmethod range_l-val ((m <target_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robots_msg-msg:range_l-val is deprecated.  Use robots_msg-msg:range_l instead.")
  (range_l m))

(cl:ensure-generic-function 'range_c-val :lambda-list '(m))
(cl:defmethod range_c-val ((m <target_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robots_msg-msg:range_c-val is deprecated.  Use robots_msg-msg:range_c instead.")
  (range_c m))

(cl:ensure-generic-function 'range_r-val :lambda-list '(m))
(cl:defmethod range_r-val ((m <target_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robots_msg-msg:range_r-val is deprecated.  Use robots_msg-msg:range_r instead.")
  (range_r m))

(cl:ensure-generic-function 'n_food-val :lambda-list '(m))
(cl:defmethod n_food-val ((m <target_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robots_msg-msg:n_food-val is deprecated.  Use robots_msg-msg:n_food instead.")
  (n_food m))

(cl:ensure-generic-function 'n_water-val :lambda-list '(m))
(cl:defmethod n_water-val ((m <target_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robots_msg-msg:n_water-val is deprecated.  Use robots_msg-msg:n_water instead.")
  (n_water m))

(cl:ensure-generic-function 'targ_id-val :lambda-list '(m))
(cl:defmethod targ_id-val ((m <target_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robots_msg-msg:targ_id-val is deprecated.  Use robots_msg-msg:targ_id instead.")
  (targ_id m))

(cl:ensure-generic-function 'targ_type-val :lambda-list '(m))
(cl:defmethod targ_type-val ((m <target_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robots_msg-msg:targ_type-val is deprecated.  Use robots_msg-msg:targ_type instead.")
  (targ_type m))

(cl:ensure-generic-function 'targ_dist-val :lambda-list '(m))
(cl:defmethod targ_dist-val ((m <target_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robots_msg-msg:targ_dist-val is deprecated.  Use robots_msg-msg:targ_dist instead.")
  (targ_dist m))

(cl:ensure-generic-function 'targ_x-val :lambda-list '(m))
(cl:defmethod targ_x-val ((m <target_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robots_msg-msg:targ_x-val is deprecated.  Use robots_msg-msg:targ_x instead.")
  (targ_x m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <target_data>) ostream)
  "Serializes a message object of type '<target_data>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'range_l)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'range_l)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'range_c)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'range_c)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'range_r)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'range_r)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'n_food)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'n_food)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'n_water)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'n_water)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'targ_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'targ_id))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'targ_type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'targ_type))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'targ_dist))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'targ_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <target_data>) istream)
  "Deserializes a message object of type '<target_data>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'range_l)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'range_l)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'range_c)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'range_c)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'range_r)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'range_r)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'n_food)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'n_food)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'n_water)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'n_water)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'targ_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'targ_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'targ_type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'targ_type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'targ_dist) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'targ_x) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<target_data>)))
  "Returns string type for a message object of type '<target_data>"
  "robots_msg/target_data")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'target_data)))
  "Returns string type for a message object of type 'target_data"
  "robots_msg/target_data")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<target_data>)))
  "Returns md5sum for a message object of type '<target_data>"
  "a34b54ff877258b4705ff283256911e9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'target_data)))
  "Returns md5sum for a message object of type 'target_data"
  "a34b54ff877258b4705ff283256911e9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<target_data>)))
  "Returns full string definition for message of type '<target_data>"
  (cl:format cl:nil "uint16 range_l  # left ir sensor~%uint16 range_c  # laser sensor~%uint16 range_r  # right ir sensor ~%uint16 n_food~%uint16 n_water~%string targ_id~%string targ_type~%float32 targ_dist~%float32 targ_x~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'target_data)))
  "Returns full string definition for message of type 'target_data"
  (cl:format cl:nil "uint16 range_l  # left ir sensor~%uint16 range_c  # laser sensor~%uint16 range_r  # right ir sensor ~%uint16 n_food~%uint16 n_water~%string targ_id~%string targ_type~%float32 targ_dist~%float32 targ_x~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <target_data>))
  (cl:+ 0
     2
     2
     2
     2
     2
     4 (cl:length (cl:slot-value msg 'targ_id))
     4 (cl:length (cl:slot-value msg 'targ_type))
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <target_data>))
  "Converts a ROS message object to a list"
  (cl:list 'target_data
    (cl:cons ':range_l (range_l msg))
    (cl:cons ':range_c (range_c msg))
    (cl:cons ':range_r (range_r msg))
    (cl:cons ':n_food (n_food msg))
    (cl:cons ':n_water (n_water msg))
    (cl:cons ':targ_id (targ_id msg))
    (cl:cons ':targ_type (targ_type msg))
    (cl:cons ':targ_dist (targ_dist msg))
    (cl:cons ':targ_x (targ_x msg))
))
