;; Auto-generated. Do not edit!


(when (boundp 'robots_msg::xl320)
  (if (not (find-package "ROBOTS_MSG"))
    (make-package "ROBOTS_MSG"))
  (shadow 'xl320 (find-package "ROBOTS_MSG")))
(unless (find-package "ROBOTS_MSG::XL320")
  (make-package "ROBOTS_MSG::XL320"))

(in-package "ROS")
;;//! \htmlinclude xl320.msg.html


(defclass robots_msg::xl320
  :super ros::object
  :slots (_ID _LED _speed _Goal_Position _Present_Position ))

(defmethod robots_msg::xl320
  (:init
   (&key
    ((:ID __ID) 0)
    ((:LED __LED) 0)
    ((:speed __speed) 0)
    ((:Goal_Position __Goal_Position) 0)
    ((:Present_Position __Present_Position) 0)
    )
   (send-super :init)
   (setq _ID (round __ID))
   (setq _LED (round __LED))
   (setq _speed (round __speed))
   (setq _Goal_Position (round __Goal_Position))
   (setq _Present_Position (round __Present_Position))
   self)
  (:ID
   (&optional __ID)
   (if __ID (setq _ID __ID)) _ID)
  (:LED
   (&optional __LED)
   (if __LED (setq _LED __LED)) _LED)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:Goal_Position
   (&optional __Goal_Position)
   (if __Goal_Position (setq _Goal_Position __Goal_Position)) _Goal_Position)
  (:Present_Position
   (&optional __Present_Position)
   (if __Present_Position (setq _Present_Position __Present_Position)) _Present_Position)
  (:serialization-length
   ()
   (+
    ;; uint8 _ID
    1
    ;; uint8 _LED
    1
    ;; uint16 _speed
    2
    ;; uint16 _Goal_Position
    2
    ;; uint16 _Present_Position
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _ID
       (write-byte _ID s)
     ;; uint8 _LED
       (write-byte _LED s)
     ;; uint16 _speed
       (write-word _speed s)
     ;; uint16 _Goal_Position
       (write-word _Goal_Position s)
     ;; uint16 _Present_Position
       (write-word _Present_Position s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _ID
     (setq _ID (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _LED
     (setq _LED (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _speed
     (setq _speed (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _Goal_Position
     (setq _Goal_Position (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _Present_Position
     (setq _Present_Position (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get robots_msg::xl320 :md5sum-) "67fe2fb91485e549cd0ff16b0e5b40e4")
(setf (get robots_msg::xl320 :datatype-) "robots_msg/xl320")
(setf (get robots_msg::xl320 :definition-)
      "uint8  ID
uint8  LED
uint16 speed
uint16 Goal_Position
uint16 Present_Position

")



(provide :robots_msg/xl320 "67fe2fb91485e549cd0ff16b0e5b40e4")


