;; Auto-generated. Do not edit!


(when (boundp 'robots_msg::DiscreteAction)
  (if (not (find-package "ROBOTS_MSG"))
    (make-package "ROBOTS_MSG"))
  (shadow 'DiscreteAction (find-package "ROBOTS_MSG")))
(unless (find-package "ROBOTS_MSG::DISCRETEACTION")
  (make-package "ROBOTS_MSG::DISCRETEACTION"))

(in-package "ROS")
;;//! \htmlinclude DiscreteAction.msg.html


(defclass robots_msg::DiscreteAction
  :super ros::object
  :slots (_robot_id _action ))

(defmethod robots_msg::DiscreteAction
  (:init
   (&key
    ((:robot_id __robot_id) "")
    ((:action __action) "")
    )
   (send-super :init)
   (setq _robot_id (string __robot_id))
   (setq _action (string __action))
   self)
  (:robot_id
   (&optional __robot_id)
   (if __robot_id (setq _robot_id __robot_id)) _robot_id)
  (:action
   (&optional __action)
   (if __action (setq _action __action)) _action)
  (:serialization-length
   ()
   (+
    ;; string _robot_id
    4 (length _robot_id)
    ;; string _action
    4 (length _action)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _robot_id
       (write-long (length _robot_id) s) (princ _robot_id s)
     ;; string _action
       (write-long (length _action) s) (princ _action s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _robot_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _robot_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _action
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _action (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get robots_msg::DiscreteAction :md5sum-) "b521f11e88571246b003b95decc73bfa")
(setf (get robots_msg::DiscreteAction :datatype-) "robots_msg/DiscreteAction")
(setf (get robots_msg::DiscreteAction :definition-)
      "# Provide information about the type of action the robot will perform
string robot_id # robot id
string action # discrete action

")



(provide :robots_msg/DiscreteAction "b521f11e88571246b003b95decc73bfa")


