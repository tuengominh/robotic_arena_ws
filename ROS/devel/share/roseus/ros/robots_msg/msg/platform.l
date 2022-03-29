;; Auto-generated. Do not edit!


(when (boundp 'robots_msg::platform)
  (if (not (find-package "ROBOTS_MSG"))
    (make-package "ROBOTS_MSG"))
  (shadow 'platform (find-package "ROBOTS_MSG")))
(unless (find-package "ROBOTS_MSG::PLATFORM")
  (make-package "ROBOTS_MSG::PLATFORM"))

(in-package "ROS")
;;//! \htmlinclude platform.msg.html


(defclass robots_msg::platform
  :super ros::object
  :slots (_action _up _down ))

(defmethod robots_msg::platform
  (:init
   (&key
    ((:action __action) "")
    ((:up __up) nil)
    ((:down __down) nil)
    )
   (send-super :init)
   (setq _action (string __action))
   (setq _up __up)
   (setq _down __down)
   self)
  (:action
   (&optional __action)
   (if __action (setq _action __action)) _action)
  (:up
   (&optional (__up :null))
   (if (not (eq __up :null)) (setq _up __up)) _up)
  (:down
   (&optional (__down :null))
   (if (not (eq __down :null)) (setq _down __down)) _down)
  (:serialization-length
   ()
   (+
    ;; string _action
    4 (length _action)
    ;; bool _up
    1
    ;; bool _down
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _action
       (write-long (length _action) s) (princ _action s)
     ;; bool _up
       (if _up (write-byte -1 s) (write-byte 0 s))
     ;; bool _down
       (if _down (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _action
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _action (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _up
     (setq _up (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _down
     (setq _down (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get robots_msg::platform :md5sum-) "44b302fafd3aca89b85306b91c254349")
(setf (get robots_msg::platform :datatype-) "robots_msg/platform")
(setf (get robots_msg::platform :definition-)
      "string action # the actions are 'MOVING_UP', 'MOVING_DOWN', 'STOP'
bool up #  True when is up
bool down # True when is down 


")



(provide :robots_msg/platform "44b302fafd3aca89b85306b91c254349")


