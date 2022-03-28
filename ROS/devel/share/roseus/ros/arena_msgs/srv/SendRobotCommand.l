;; Auto-generated. Do not edit!


(when (boundp 'arena_msgs::SendRobotCommand)
  (if (not (find-package "ARENA_MSGS"))
    (make-package "ARENA_MSGS"))
  (shadow 'SendRobotCommand (find-package "ARENA_MSGS")))
(unless (find-package "ARENA_MSGS::SENDROBOTCOMMAND")
  (make-package "ARENA_MSGS::SENDROBOTCOMMAND"))
(unless (find-package "ARENA_MSGS::SENDROBOTCOMMANDREQUEST")
  (make-package "ARENA_MSGS::SENDROBOTCOMMANDREQUEST"))
(unless (find-package "ARENA_MSGS::SENDROBOTCOMMANDRESPONSE")
  (make-package "ARENA_MSGS::SENDROBOTCOMMANDRESPONSE"))

(in-package "ROS")





(defclass arena_msgs::SendRobotCommandRequest
  :super ros::object
  :slots (_command ))

(defmethod arena_msgs::SendRobotCommandRequest
  (:init
   (&key
    ((:command __command) 0)
    )
   (send-super :init)
   (setq _command (round __command))
   self)
  (:command
   (&optional __command)
   (if __command (setq _command __command)) _command)
  (:serialization-length
   ()
   (+
    ;; uint8 _command
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _command
       (write-byte _command s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _command
     (setq _command (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass arena_msgs::SendRobotCommandResponse
  :super ros::object
  :slots (_received ))

(defmethod arena_msgs::SendRobotCommandResponse
  (:init
   (&key
    ((:received __received) 0)
    )
   (send-super :init)
   (setq _received (round __received))
   self)
  (:received
   (&optional __received)
   (if __received (setq _received __received)) _received)
  (:serialization-length
   ()
   (+
    ;; uint8 _received
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _received
       (write-byte _received s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _received
     (setq _received (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass arena_msgs::SendRobotCommand
  :super ros::object
  :slots ())

(setf (get arena_msgs::SendRobotCommand :md5sum-) "257718bad5e2af496975d318ff34944d")
(setf (get arena_msgs::SendRobotCommand :datatype-) "arena_msgs/SendRobotCommand")
(setf (get arena_msgs::SendRobotCommand :request) arena_msgs::SendRobotCommandRequest)
(setf (get arena_msgs::SendRobotCommand :response) arena_msgs::SendRobotCommandResponse)

(defmethod arena_msgs::SendRobotCommandRequest
  (:response () (instance arena_msgs::SendRobotCommandResponse :init)))

(setf (get arena_msgs::SendRobotCommandRequest :md5sum-) "257718bad5e2af496975d318ff34944d")
(setf (get arena_msgs::SendRobotCommandRequest :datatype-) "arena_msgs/SendRobotCommandRequest")
(setf (get arena_msgs::SendRobotCommandRequest :definition-)
      "uint8 command		# task command to perform
---
uint8 received		# command received confirmation


")

(setf (get arena_msgs::SendRobotCommandResponse :md5sum-) "257718bad5e2af496975d318ff34944d")
(setf (get arena_msgs::SendRobotCommandResponse :datatype-) "arena_msgs/SendRobotCommandResponse")
(setf (get arena_msgs::SendRobotCommandResponse :definition-)
      "uint8 command		# task command to perform
---
uint8 received		# command received confirmation


")



(provide :arena_msgs/SendRobotCommand "257718bad5e2af496975d318ff34944d")


