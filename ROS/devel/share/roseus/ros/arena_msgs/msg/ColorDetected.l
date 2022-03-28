;; Auto-generated. Do not edit!


(when (boundp 'arena_msgs::ColorDetected)
  (if (not (find-package "ARENA_MSGS"))
    (make-package "ARENA_MSGS"))
  (shadow 'ColorDetected (find-package "ARENA_MSGS")))
(unless (find-package "ARENA_MSGS::COLORDETECTED")
  (make-package "ARENA_MSGS::COLORDETECTED"))

(in-package "ROS")
;;//! \htmlinclude ColorDetected.msg.html


(defclass arena_msgs::ColorDetected
  :super ros::object
  :slots (_robot_id _color ))

(defmethod arena_msgs::ColorDetected
  (:init
   (&key
    ((:robot_id __robot_id) "")
    ((:color __color) "")
    )
   (send-super :init)
   (setq _robot_id (string __robot_id))
   (setq _color (string __color))
   self)
  (:robot_id
   (&optional __robot_id)
   (if __robot_id (setq _robot_id __robot_id)) _robot_id)
  (:color
   (&optional __color)
   (if __color (setq _color __color)) _color)
  (:serialization-length
   ()
   (+
    ;; string _robot_id
    4 (length _robot_id)
    ;; string _color
    4 (length _color)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _robot_id
       (write-long (length _robot_id) s) (princ _robot_id s)
     ;; string _color
       (write-long (length _color) s) (princ _color s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _robot_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _robot_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _color
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _color (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get arena_msgs::ColorDetected :md5sum-) "2a781930af9459f434d13917270bb087")
(setf (get arena_msgs::ColorDetected :datatype-) "arena_msgs/ColorDetected")
(setf (get arena_msgs::ColorDetected :definition-)
      "# ColorDetected

# Provide information about the dominant color of the current visual input

# Robot id
string robot_id

# Detected color
string color

")



(provide :arena_msgs/ColorDetected "2a781930af9459f434d13917270bb087")


