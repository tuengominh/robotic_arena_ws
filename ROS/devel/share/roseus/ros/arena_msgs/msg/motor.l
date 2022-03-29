;; Auto-generated. Do not edit!


(when (boundp 'arena_msgs::motor)
  (if (not (find-package "ARENA_MSGS"))
    (make-package "ARENA_MSGS"))
  (shadow 'motor (find-package "ARENA_MSGS")))
(unless (find-package "ARENA_MSGS::MOTOR")
  (make-package "ARENA_MSGS::MOTOR"))

(in-package "ROS")
;;//! \htmlinclude motor.msg.html


(defclass arena_msgs::motor
  :super ros::object
  :slots (_speed _dir _pos ))

(defmethod arena_msgs::motor
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

(setf (get arena_msgs::motor :md5sum-) "2fa8cbcf1466cb2e33624b31d90f1f01")
(setf (get arena_msgs::motor :datatype-) "arena_msgs/motor")
(setf (get arena_msgs::motor :definition-)
      "uint8 speed # 0..255 to ecology20 and 0..180 to tanke20
uint8 dir # 0 stop 1:CW 2:CCW
int16 pos # position 


")



(provide :arena_msgs/motor "2fa8cbcf1466cb2e33624b31d90f1f01")


