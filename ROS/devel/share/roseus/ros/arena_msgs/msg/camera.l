;; Auto-generated. Do not edit!


(when (boundp 'arena_msgs::camera)
  (if (not (find-package "ARENA_MSGS"))
    (make-package "ARENA_MSGS"))
  (shadow 'camera (find-package "ARENA_MSGS")))
(unless (find-package "ARENA_MSGS::CAMERA")
  (make-package "ARENA_MSGS::CAMERA"))

(in-package "ROS")
;;//! \htmlinclude camera.msg.html


(defclass arena_msgs::camera
  :super ros::object
  :slots (_detect _id _targx _targy _data ))

(defmethod arena_msgs::camera
  (:init
   (&key
    ((:detect __detect) 0)
    ((:id __id) 0)
    ((:targx __targx) 0)
    ((:targy __targy) 0)
    ((:data __data) "")
    )
   (send-super :init)
   (setq _detect (round __detect))
   (setq _id (round __id))
   (setq _targx (round __targx))
   (setq _targy (round __targy))
   (setq _data (string __data))
   self)
  (:detect
   (&optional __detect)
   (if __detect (setq _detect __detect)) _detect)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:targx
   (&optional __targx)
   (if __targx (setq _targx __targx)) _targx)
  (:targy
   (&optional __targy)
   (if __targy (setq _targy __targy)) _targy)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; int8 _detect
    1
    ;; uint8 _id
    1
    ;; int16 _targx
    2
    ;; int16 _targy
    2
    ;; string _data
    4 (length _data)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _detect
       (write-byte _detect s)
     ;; uint8 _id
       (write-byte _id s)
     ;; int16 _targx
       (write-word _targx s)
     ;; int16 _targy
       (write-word _targy s)
     ;; string _data
       (write-long (length _data) s) (princ _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _detect
     (setq _detect (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _detect 127) (setq _detect (- _detect 256)))
   ;; uint8 _id
     (setq _id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; int16 _targx
     (setq _targx (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _targy
     (setq _targy (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; string _data
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _data (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get arena_msgs::camera :md5sum-) "1b522f111dbe5395cc09d642ba25bfa6")
(setf (get arena_msgs::camera :datatype-) "arena_msgs/camera")
(setf (get arena_msgs::camera :definition-)
      "int8 detect # 1 detect 0 non detect    
uint8 id    # number of fiducial
int16 targx # coordinate x
int16 targy # coordinate y
string data # all info in string
")



(provide :arena_msgs/camera "1b522f111dbe5395cc09d642ba25bfa6")


