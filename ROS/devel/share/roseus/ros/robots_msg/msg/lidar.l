;; Auto-generated. Do not edit!


(when (boundp 'robots_msg::lidar)
  (if (not (find-package "ROBOTS_MSG"))
    (make-package "ROBOTS_MSG"))
  (shadow 'lidar (find-package "ROBOTS_MSG")))
(unless (find-package "ROBOTS_MSG::LIDAR")
  (make-package "ROBOTS_MSG::LIDAR"))

(in-package "ROS")
;;//! \htmlinclude lidar.msg.html


(defclass robots_msg::lidar
  :super ros::object
  :slots (_position _range ))

(defmethod robots_msg::lidar
  (:init
   (&key
    ((:position __position) 0)
    ((:range __range) 0)
    )
   (send-super :init)
   (setq _position (round __position))
   (setq _range (round __range))
   self)
  (:position
   (&optional __position)
   (if __position (setq _position __position)) _position)
  (:range
   (&optional __range)
   (if __range (setq _range __range)) _range)
  (:serialization-length
   ()
   (+
    ;; int16 _position
    2
    ;; int16 _range
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _position
       (write-word _position s)
     ;; int16 _range
       (write-word _range s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _position
     (setq _position (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _range
     (setq _range (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get robots_msg::lidar :md5sum-) "5060fc4ab83a253ef9abef852a44d0ad")
(setf (get robots_msg::lidar :datatype-) "robots_msg/lidar")
(setf (get robots_msg::lidar :definition-)
      "int16 position
int16 range

")



(provide :robots_msg/lidar "5060fc4ab83a253ef9abef852a44d0ad")


