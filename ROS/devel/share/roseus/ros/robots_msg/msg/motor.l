;; Auto-generated. Do not edit!


(when (boundp 'robots_msg::motor)
  (if (not (find-package "ROBOTS_MSG"))
    (make-package "ROBOTS_MSG"))
  (shadow 'motor (find-package "ROBOTS_MSG")))
(unless (find-package "ROBOTS_MSG::MOTOR")
  (make-package "ROBOTS_MSG::MOTOR"))

(in-package "ROS")
;;//! \htmlinclude motor.msg.html


(defclass robots_msg::motor
  :super ros::object
  :slots (_speed _dir _pos ))

(defmethod robots_msg::motor
  (:init
   (&key
    ((:speed __speed) 0)
    ((:dir __dir) 0)
    ((:pos __pos) 0)
    )
   (send-super :init)
   (setq _speed (round __speed))
   (setq _dir (round __dir))
   (setq _pos (round __pos))
   self)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:dir
   (&optional __dir)
   (if __dir (setq _dir __dir)) _dir)
  (:pos
   (&optional __pos)
   (if __pos (setq _pos __pos)) _pos)
  (:serialization-length
   ()
   (+
    ;; uint8 _speed
    1
    ;; uint8 _dir
    1
    ;; int16 _pos
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _speed
       (write-byte _speed s)
     ;; uint8 _dir
       (write-byte _dir s)
     ;; int16 _pos
       (write-word _pos s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _speed
     (setq _speed (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _dir
     (setq _dir (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; int16 _pos
     (setq _pos (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get robots_msg::motor :md5sum-) "2fa8cbcf1466cb2e33624b31d90f1f01")
(setf (get robots_msg::motor :datatype-) "robots_msg/motor")
(setf (get robots_msg::motor :definition-)
      "uint8 speed  # 0..255 for ecology20 and 0..180 for tanke20
uint8 dir  # 0 : stop, 1 : CW, 2 : CCW
int16 pos  # position 

")



(provide :robots_msg/motor "2fa8cbcf1466cb2e33624b31d90f1f01")


