;; Auto-generated. Do not edit!


(when (boundp 'robots_msg::continuous_action)
  (if (not (find-package "ROBOTS_MSG"))
    (make-package "ROBOTS_MSG"))
  (shadow 'continuous_action (find-package "ROBOTS_MSG")))
(unless (find-package "ROBOTS_MSG::CONTINUOUS_ACTION")
  (make-package "ROBOTS_MSG::CONTINUOUS_ACTION"))

(in-package "ROS")
;;//! \htmlinclude continuous_action.msg.html


(defclass robots_msg::continuous_action
  :super ros::object
  :slots (_robot_id _left_motor _right_motor ))

(defmethod robots_msg::continuous_action
  (:init
   (&key
    ((:robot_id __robot_id) "")
    ((:left_motor __left_motor) 0.0)
    ((:right_motor __right_motor) 0.0)
    )
   (send-super :init)
   (setq _robot_id (string __robot_id))
   (setq _left_motor (float __left_motor))
   (setq _right_motor (float __right_motor))
   self)
  (:robot_id
   (&optional __robot_id)
   (if __robot_id (setq _robot_id __robot_id)) _robot_id)
  (:left_motor
   (&optional __left_motor)
   (if __left_motor (setq _left_motor __left_motor)) _left_motor)
  (:right_motor
   (&optional __right_motor)
   (if __right_motor (setq _right_motor __right_motor)) _right_motor)
  (:serialization-length
   ()
   (+
    ;; string _robot_id
    4 (length _robot_id)
    ;; float32 _left_motor
    4
    ;; float32 _right_motor
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _robot_id
       (write-long (length _robot_id) s) (princ _robot_id s)
     ;; float32 _left_motor
       (sys::poke _left_motor (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _right_motor
       (sys::poke _right_motor (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _robot_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _robot_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _left_motor
     (setq _left_motor (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _right_motor
     (setq _right_motor (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get robots_msg::continuous_action :md5sum-) "4fc9c8444f1e9ed5a0212e0b05e258d4")
(setf (get robots_msg::continuous_action :datatype-) "robots_msg/continuous_action")
(setf (get robots_msg::continuous_action :definition-)
      "# ContinuousAction

# Provide information about the type of action the robot will perform
# Robot id
string robot_id

# Continuous action
float32 left_motor
float32 right_motor

")



(provide :robots_msg/continuous_action "4fc9c8444f1e9ed5a0212e0b05e258d4")


