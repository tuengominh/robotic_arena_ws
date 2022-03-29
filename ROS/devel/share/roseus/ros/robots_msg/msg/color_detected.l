;; Auto-generated. Do not edit!


(when (boundp 'robots_msg::color_detected)
  (if (not (find-package "ROBOTS_MSG"))
    (make-package "ROBOTS_MSG"))
  (shadow 'color_detected (find-package "ROBOTS_MSG")))
(unless (find-package "ROBOTS_MSG::COLOR_DETECTED")
  (make-package "ROBOTS_MSG::COLOR_DETECTED"))

(in-package "ROS")
;;//! \htmlinclude color_detected.msg.html


(defclass robots_msg::color_detected
  :super ros::object
  :slots (_robot_id _color ))

(defmethod robots_msg::color_detected
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

(setf (get robots_msg::color_detected :md5sum-) "2a781930af9459f434d13917270bb087")
(setf (get robots_msg::color_detected :datatype-) "robots_msg/color_detected")
(setf (get robots_msg::color_detected :definition-)
      "# ColorDetected

# Provide information about the dominant color of the current visual input

# Robot id
string robot_id

# Detected color
string color

")



(provide :robots_msg/color_detected "2a781930af9459f434d13917270bb087")


