;; Auto-generated. Do not edit!


(when (boundp 'robots_msg::cmd_msg)
  (if (not (find-package "ROBOTS_MSG"))
    (make-package "ROBOTS_MSG"))
  (shadow 'cmd_msg (find-package "ROBOTS_MSG")))
(unless (find-package "ROBOTS_MSG::CMD_MSG")
  (make-package "ROBOTS_MSG::CMD_MSG"))

(in-package "ROS")
;;//! \htmlinclude cmd_msg.msg.html


(defclass robots_msg::cmd_msg
  :super ros::object
  :slots (_label _task _id _inst _op1 _op2 _op3 _op4 _op5 ))

(defmethod robots_msg::cmd_msg
  (:init
   (&key
    ((:label __label) "")
    ((:task __task) "")
    ((:id __id) 0)
    ((:inst __inst) 0)
    ((:op1 __op1) 0)
    ((:op2 __op2) 0)
    ((:op3 __op3) 0)
    ((:op4 __op4) 0)
    ((:op5 __op5) 0)
    )
   (send-super :init)
   (setq _label (string __label))
   (setq _task (string __task))
   (setq _id (round __id))
   (setq _inst (round __inst))
   (setq _op1 (round __op1))
   (setq _op2 (round __op2))
   (setq _op3 (round __op3))
   (setq _op4 (round __op4))
   (setq _op5 (round __op5))
   self)
  (:label
   (&optional __label)
   (if __label (setq _label __label)) _label)
  (:task
   (&optional __task)
   (if __task (setq _task __task)) _task)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:inst
   (&optional __inst)
   (if __inst (setq _inst __inst)) _inst)
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
    ;; string _label
    4 (length _label)
    ;; string _task
    4 (length _task)
    ;; uint8 _id
    1
    ;; uint8 _inst
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
     ;; string _label
       (write-long (length _label) s) (princ _label s)
     ;; string _task
       (write-long (length _task) s) (princ _task s)
     ;; uint8 _id
       (write-byte _id s)
     ;; uint8 _inst
       (write-byte _inst s)
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
   ;; string _label
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _label (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _task
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _task (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _id
     (setq _id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _inst
     (setq _inst (sys::peek buf ptr- :char)) (incf ptr- 1)
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

(setf (get robots_msg::cmd_msg :md5sum-) "868042847d61ba4fb9f71e6ab3606ffb")
(setf (get robots_msg::cmd_msg :datatype-) "robots_msg/cmd_msg")
(setf (get robots_msg::cmd_msg :definition-)
      "string label # label main task
string task  # label subtask
uint8 id     # [id, inst, op1, op2, op3, op4, op5, id]
uint8 inst
uint8 op1
uint8 op2
uint8 op3
uint8 op4
uint8 op5

")



(provide :robots_msg/cmd_msg "868042847d61ba4fb9f71e6ab3606ffb")


