
(cl:in-package :asdf)

(defsystem "arena_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "SendRobotCommand" :depends-on ("_package_SendRobotCommand"))
    (:file "_package_SendRobotCommand" :depends-on ("_package"))
  ))