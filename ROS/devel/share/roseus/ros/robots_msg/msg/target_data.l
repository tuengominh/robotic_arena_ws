;; Auto-generated. Do not edit!


(when (boundp 'robots_msg::target_data)
  (if (not (find-package "ROBOTS_MSG"))
    (make-package "ROBOTS_MSG"))
  (shadow 'target_data (find-package "ROBOTS_MSG")))
(unless (find-package "ROBOTS_MSG::TARGET_DATA")
  (make-package "ROBOTS_MSG::TARGET_DATA"))

(in-package "ROS")
;;//! \htmlinclude target_data.msg.html


(defclass robots_msg::target_data
  :super ros::object
  :slots (_range_l _range_c _range_r _n_food _n_water _targ_id _targ_type _targ_dist _targ_x ))

(defmethod robots_msg::target_data
  (:init
   (&key
    ((:range_l __range_l) 0)
    ((:range_c __range_c) 0)
    ((:range_r __range_r) 0)
    ((:n_food __n_food) 0)
    ((:n_water __n_water) 0)
    ((:targ_id __targ_id) "")
    ((:targ_type __targ_type) "")
    ((:targ_dist __targ_dist) 0.0)
    ((:targ_x __targ_x) 0.0)
    )
   (send-super :init)
   (setq _range_l (round __range_l))
   (setq _range_c (round __range_c))
   (setq _range_r (round __range_r))
   (setq _n_food (round __n_food))
   (setq _n_water (round __n_water))
   (setq _targ_id (string __targ_id))
   (setq _targ_type (string __targ_type))
   (setq _targ_dist (float __targ_dist))
   (setq _targ_x (float __targ_x))
   self)
  (:range_l
   (&optional __range_l)
   (if __range_l (setq _range_l __range_l)) _range_l)
  (:range_c
   (&optional __range_c)
   (if __range_c (setq _range_c __range_c)) _range_c)
  (:range_r
   (&optional __range_r)
   (if __range_r (setq _range_r __range_r)) _range_r)
  (:n_food
   (&optional __n_food)
   (if __n_food (setq _n_food __n_food)) _n_food)
  (:n_water
   (&optional __n_water)
   (if __n_water (setq _n_water __n_water)) _n_water)
  (:targ_id
   (&optional __targ_id)
   (if __targ_id (setq _targ_id __targ_id)) _targ_id)
  (:targ_type
   (&optional __targ_type)
   (if __targ_type (setq _targ_type __targ_type)) _targ_type)
  (:targ_dist
   (&optional __targ_dist)
   (if __targ_dist (setq _targ_dist __targ_dist)) _targ_dist)
  (:targ_x
   (&optional __targ_x)
   (if __targ_x (setq _targ_x __targ_x)) _targ_x)
  (:serialization-length
   ()
   (+
    ;; uint16 _range_l
    2
    ;; uint16 _range_c
    2
    ;; uint16 _range_r
    2
    ;; uint16 _n_food
    2
    ;; uint16 _n_water
    2
    ;; string _targ_id
    4 (length _targ_id)
    ;; string _targ_type
    4 (length _targ_type)
    ;; float32 _targ_dist
    4
    ;; float32 _targ_x
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _range_l
       (write-word _range_l s)
     ;; uint16 _range_c
       (write-word _range_c s)
     ;; uint16 _range_r
       (write-word _range_r s)
     ;; uint16 _n_food
       (write-word _n_food s)
     ;; uint16 _n_water
       (write-word _n_water s)
     ;; string _targ_id
       (write-long (length _targ_id) s) (princ _targ_id s)
     ;; string _targ_type
       (write-long (length _targ_type) s) (princ _targ_type s)
     ;; float32 _targ_dist
       (sys::poke _targ_dist (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _targ_x
       (sys::poke _targ_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _range_l
     (setq _range_l (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _range_c
     (setq _range_c (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _range_r
     (setq _range_r (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _n_food
     (setq _n_food (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _n_water
     (setq _n_water (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; string _targ_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _targ_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _targ_type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _targ_type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _targ_dist
     (setq _targ_dist (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _targ_x
     (setq _targ_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get robots_msg::target_data :md5sum-) "a34b54ff877258b4705ff283256911e9")
(setf (get robots_msg::target_data :datatype-) "robots_msg/target_data")
(setf (get robots_msg::target_data :definition-)
      "uint16 range_l  # left ir sensor
uint16 range_c  # laser sensor
uint16 range_r  # right ir sensor 
uint16 n_food
uint16 n_water
string targ_id
string targ_type
float32 targ_dist
float32 targ_x

")



(provide :robots_msg/target_data "a34b54ff877258b4705ff283256911e9")


