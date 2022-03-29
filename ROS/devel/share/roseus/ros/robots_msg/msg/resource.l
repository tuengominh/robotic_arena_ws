;; Auto-generated. Do not edit!


(when (boundp 'robots_msg::resource)
  (if (not (find-package "ROBOTS_MSG"))
    (make-package "ROBOTS_MSG"))
  (shadow 'resource (find-package "ROBOTS_MSG")))
(unless (find-package "ROBOTS_MSG::RESOURCE")
  (make-package "ROBOTS_MSG::RESOURCE"))

(in-package "ROS")
;;//! \htmlinclude resource.msg.html


(defclass robots_msg::resource
  :super ros::object
  :slots (_id _type _impact ))

(defmethod robots_msg::resource
  (:init
   (&key
    ((:id __id) "")
    ((:type __type) "")
    ((:impact __impact) 0.0)
    )
   (send-super :init)
   (setq _id (string __id))
   (setq _type (string __type))
   (setq _impact (float __impact))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:impact
   (&optional __impact)
   (if __impact (setq _impact __impact)) _impact)
  (:serialization-length
   ()
   (+
    ;; string _id
    4 (length _id)
    ;; string _type
    4 (length _type)
    ;; float32 _impact
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _id
       (write-long (length _id) s) (princ _id s)
     ;; string _type
       (write-long (length _type) s) (princ _type s)
     ;; float32 _impact
       (sys::poke _impact (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _impact
     (setq _impact (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get robots_msg::resource :md5sum-) "5cf0b9aa0750781892e023b6ab9304df")
(setf (get robots_msg::resource :datatype-) "robots_msg/resource")
(setf (get robots_msg::resource :definition-)
      "string id  
string type
float32 impact

")



(provide :robots_msg/resource "5cf0b9aa0750781892e023b6ab9304df")


