;; Auto-generated. Do not edit!


(when (boundp 'robots_msg::jevois)
  (if (not (find-package "ROBOTS_MSG"))
    (make-package "ROBOTS_MSG"))
  (shadow 'jevois (find-package "ROBOTS_MSG")))
(unless (find-package "ROBOTS_MSG::JEVOIS")
  (make-package "ROBOTS_MSG::JEVOIS"))

(in-package "ROS")
;;//! \htmlinclude jevois.msg.html


(defclass robots_msg::jevois
  :super ros::object
  :slots (_type _id _targx _targy _targw _targh ))

(defmethod robots_msg::jevois
  (:init
   (&key
    ((:type __type) "")
    ((:id __id) 0)
    ((:targx __targx) 0)
    ((:targy __targy) 0)
    ((:targw __targw) 0)
    ((:targh __targh) 0)
    )
   (send-super :init)
   (setq _type (string __type))
   (setq _id (round __id))
   (setq _targx (round __targx))
   (setq _targy (round __targy))
   (setq _targw (round __targw))
   (setq _targh (round __targh))
   self)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:targx
   (&optional __targx)
   (if __targx (setq _targx __targx)) _targx)
  (:targy
   (&optional __targy)
   (if __targy (setq _targy __targy)) _targy)
  (:targw
   (&optional __targw)
   (if __targw (setq _targw __targw)) _targw)
  (:targh
   (&optional __targh)
   (if __targh (setq _targh __targh)) _targh)
  (:serialization-length
   ()
   (+
    ;; string _type
    4 (length _type)
    ;; uint8 _id
    1
    ;; int16 _targx
    2
    ;; int16 _targy
    2
    ;; int16 _targw
    2
    ;; int16 _targh
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _type
       (write-long (length _type) s) (princ _type s)
     ;; uint8 _id
       (write-byte _id s)
     ;; int16 _targx
       (write-word _targx s)
     ;; int16 _targy
       (write-word _targy s)
     ;; int16 _targw
       (write-word _targw s)
     ;; int16 _targh
       (write-word _targh s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _id
     (setq _id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; int16 _targx
     (setq _targx (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _targy
     (setq _targy (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _targw
     (setq _targw (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _targh
     (setq _targh (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get robots_msg::jevois :md5sum-) "2e3dfb3b0880c65b6e878e5b7b7188e0")
(setf (get robots_msg::jevois :datatype-) "robots_msg/jevois")
(setf (get robots_msg::jevois :definition-)
      "string type
uint8 id
int16 targx  # coordinate x
int16 targy  # coordinate y
int16 targw  # weight of fiducial
int16 targh  # height of fiducial

")



(provide :robots_msg/jevois "2e3dfb3b0880c65b6e878e5b7b7188e0")


