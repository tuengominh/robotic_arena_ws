;; Auto-generated. Do not edit!


(when (boundp 'robots_msg::cmd_robot_msg)
  (if (not (find-package "ROBOTS_MSG"))
    (make-package "ROBOTS_MSG"))
  (shadow 'cmd_robot_msg (find-package "ROBOTS_MSG")))
(unless (find-package "ROBOTS_MSG::CMD_ROBOT_MSG")
  (make-package "ROBOTS_MSG::CMD_ROBOT_MSG"))

(in-package "ROS")
;;//! \htmlinclude cmd_robot_msg.msg.html


(defclass robots_msg::cmd_robot_msg
  :super ros::object
  :slots (_ip _port _id _instruction _op1 _op2 _op3 _op4 _op5 ))

(defmethod robots_msg::cmd_robot_msg
  (:init
   (&key
    ((:ip __ip) "")
    ((:port __port) 0)
    ((:id __id) 0)
    ((:instruction __instruction) 0)
    ((:op1 __op1) 0)
    ((:op2 __op2) 0)
    ((:op3 __op3) 0)
    ((:op4 __op4) 0)
    ((:op5 __op5) 0)
    )
   (send-super :init)
   (setq _ip (string __ip))
   (setq _port (round __port))
   (setq _id (round __id))
   (setq _instruction (round __instruction))
   (setq _op1 (round __op1))
   (setq _op2 (round __op2))
   (setq _op3 (round __op3))
   (setq _op4 (round __op4))
   (setq _op5 (round __op5))
   self)
  (:ip
   (&optional __ip)
   (if __ip (setq _ip __ip)) _ip)
  (:port
   (&optional __port)
   (if __port (setq _port __port)) _port)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:instruction
   (&optional __instruction)
   (if __instruction (setq _instruction __instruction)) _instruction)
  (:op1
   (&optional __op1)
   (if __op1 (setq _op1 __op1)) _op1)
  (:op2
   (&optional __op2)
   (if __op2 (setq _op2 __op2)) _op2)
  (:op3
   (&optional __op3)
   (if __op3 (setq _op3 __op3)) _op3)
  (:op4
   (&optional __op4)
   (if __op4 (setq _op4 __op4)) _op4)
  (:op5
   (&optional __op5)
   (if __op5 (setq _op5 __op5)) _op5)
  (:serialization-length
   ()
   (+
    ;; string _ip
    4 (length _ip)
    ;; uint32 _port
    4
    ;; uint8 _id
    1
    ;; uint8 _instruction
    1
    ;; uint8 _op1
    1
    ;; uint8 _op2
    1
    ;; uint8 _op3
    1
    ;; uint8 _op4
    1
    ;; uint8 _op5
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _ip
       (write-long (length _ip) s) (princ _ip s)
     ;; uint32 _port
       (write-long _port s)
     ;; uint8 _id
       (write-byte _id s)
     ;; uint8 _instruction
       (write-byte _instruction s)
     ;; uint8 _op1
       (write-byte _op1 s)
     ;; uint8 _op2
       (write-byte _op2 s)
     ;; uint8 _op3
       (write-byte _op3 s)
     ;; uint8 _op4
       (write-byte _op4 s)
     ;; uint8 _op5
       (write-byte _op5 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _ip
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _ip (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint32 _port
     (setq _port (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8 _id
     (setq _id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _instruction
     (setq _instruction (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _op1
     (setq _op1 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _op2
     (setq _op2 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _op3
     (setq _op3 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _op4
     (setq _op4 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _op5
     (setq _op5 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get robots_msg::cmd_robot_msg :md5sum-) "2c4d416eead0976d4457c7ea5840b85f")
(setf (get robots_msg::cmd_robot_msg :datatype-) "robots_msg/cmd_robot_msg")
(setf (get robots_msg::cmd_robot_msg :definition-)
      "string ip # address of the robot ESP8866
uint32 port # Port for comunication
uint8 id # identyti of robot a uint8_t
uint8 instruction # instruction 
uint8 op1
uint8 op2 
uint8 op3
uint8 op4
uint8 op5


")



(provide :robots_msg/cmd_robot_msg "2c4d416eead0976d4457c7ea5840b85f")


