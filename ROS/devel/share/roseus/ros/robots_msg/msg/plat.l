;; Auto-generated. Do not edit!


(when (boundp 'robots_msg::plat)
  (if (not (find-package "ROBOTS_MSG"))
    (make-package "ROBOTS_MSG"))
  (shadow 'plat (find-package "ROBOTS_MSG")))
(unless (find-package "ROBOTS_MSG::PLAT")
  (make-package "ROBOTS_MSG::PLAT"))

(in-package "ROS")
;;//! \htmlinclude plat.msg.html


(defclass robots_msg::plat
  :super ros::object
  :slots (_action _status ))

(defmethod robots_msg::plat
  (:init
   (&key
    ((:action __action) "")
    ((:status __status) 0)
    )
   (send-super :init)
   (setq _action (string __action))
   (setq _status (round __status))
   self)
  (:action
   (&optional __action)
   (if __action (setq _action __action)) _action)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; string _action
    4 (length _action)
    ;; uint8 _status
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _action
       (write-long (length _action) s) (princ _action s)
     ;; uint8 _status
       (write-byte _status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _action
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _action (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _status
     (setq _status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get robots_msg::plat :md5sum-) "317c41d290a095d0de64922627caccb7")
(setf (get robots_msg::plat :datatype-) "robots_msg/plat")
(setf (get robots_msg::plat :definition-)
      "string action  # \"MOVING_UP\", \"MOVING_DOWN\", \"STOP\"
uint8 status  # 1 : up, 0 : down

")



(provide :robots_msg/plat "317c41d290a095d0de64922627caccb7")


