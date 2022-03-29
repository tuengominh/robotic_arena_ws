;; Auto-generated. Do not edit!


(when (boundp 'arena_msgs::DiscreteAction)
  (if (not (find-package "ARENA_MSGS"))
    (make-package "ARENA_MSGS"))
  (shadow 'DiscreteAction (find-package "ARENA_MSGS")))
(unless (find-package "ARENA_MSGS::DISCRETEACTION")
  (make-package "ARENA_MSGS::DISCRETEACTION"))

(in-package "ROS")
;;//! \htmlinclude DiscreteAction.msg.html


(defclass arena_msgs::DiscreteAction
  :super ros::object
  :slots (_robot_id _action ))

(defmethod arena_msgs::DiscreteAction
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

(setf (get arena_msgs::DiscreteAction :md5sum-) "b521f11e88571246b003b95decc73bfa")
(setf (get arena_msgs::DiscreteAction :datatype-) "arena_msgs/DiscreteAction")
(setf (get arena_msgs::DiscreteAction :definition-)
      "# DiscreteAction

# Provide information about the type of action the robot will perform
# Robot id
string robot_id

# Discrete action
string action

")



(provide :arena_msgs/DiscreteAction "b521f11e88571246b003b95decc73bfa")


