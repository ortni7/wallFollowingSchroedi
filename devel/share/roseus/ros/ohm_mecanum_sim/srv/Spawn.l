;; Auto-generated. Do not edit!


(when (boundp 'ohm_mecanum_sim::Spawn)
  (if (not (find-package "OHM_MECANUM_SIM"))
    (make-package "OHM_MECANUM_SIM"))
  (shadow 'Spawn (find-package "OHM_MECANUM_SIM")))
(unless (find-package "OHM_MECANUM_SIM::SPAWN")
  (make-package "OHM_MECANUM_SIM::SPAWN"))
(unless (find-package "OHM_MECANUM_SIM::SPAWNREQUEST")
  (make-package "OHM_MECANUM_SIM::SPAWNREQUEST"))
(unless (find-package "OHM_MECANUM_SIM::SPAWNRESPONSE")
  (make-package "OHM_MECANUM_SIM::SPAWNRESPONSE"))

(in-package "ROS")





(defclass ohm_mecanum_sim::SpawnRequest
  :super ros::object
  :slots (_x _y _theta _name ))

(defmethod ohm_mecanum_sim::SpawnRequest
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:theta __theta) 0.0)
    ((:name __name) "")
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _theta (float __theta))
   (setq _name (string __name))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:theta
   (&optional __theta)
   (if __theta (setq _theta __theta)) _theta)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:serialization-length
   ()
   (+
    ;; float32 _x
    4
    ;; float32 _y
    4
    ;; float32 _theta
    4
    ;; string _name
    4 (length _name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _theta
       (sys::poke _theta (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _theta
     (setq _theta (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass ohm_mecanum_sim::SpawnResponse
  :super ros::object
  :slots (_x _y _theta _name ))

(defmethod ohm_mecanum_sim::SpawnResponse
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:theta __theta) 0.0)
    ((:name __name) "")
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _theta (float __theta))
   (setq _name (string __name))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:theta
   (&optional __theta)
   (if __theta (setq _theta __theta)) _theta)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:serialization-length
   ()
   (+
    ;; float32 _x
    4
    ;; float32 _y
    4
    ;; float32 _theta
    4
    ;; string _name
    4 (length _name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _theta
       (sys::poke _theta (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _theta
     (setq _theta (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass ohm_mecanum_sim::Spawn
  :super ros::object
  :slots ())

(setf (get ohm_mecanum_sim::Spawn :md5sum-) "c1497b6490cf67615397a2f4c091d32a")
(setf (get ohm_mecanum_sim::Spawn :datatype-) "ohm_mecanum_sim/Spawn")
(setf (get ohm_mecanum_sim::Spawn :request) ohm_mecanum_sim::SpawnRequest)
(setf (get ohm_mecanum_sim::Spawn :response) ohm_mecanum_sim::SpawnResponse)

(defmethod ohm_mecanum_sim::SpawnRequest
  (:response () (instance ohm_mecanum_sim::SpawnResponse :init)))

(setf (get ohm_mecanum_sim::SpawnRequest :md5sum-) "c1497b6490cf67615397a2f4c091d32a")
(setf (get ohm_mecanum_sim::SpawnRequest :datatype-) "ohm_mecanum_sim/SpawnRequest")
(setf (get ohm_mecanum_sim::SpawnRequest :definition-)
      "float32 x
float32 y
float32 theta
string name
---
float32 x
float32 y
float32 theta
string name
")

(setf (get ohm_mecanum_sim::SpawnResponse :md5sum-) "c1497b6490cf67615397a2f4c091d32a")
(setf (get ohm_mecanum_sim::SpawnResponse :datatype-) "ohm_mecanum_sim/SpawnResponse")
(setf (get ohm_mecanum_sim::SpawnResponse :definition-)
      "float32 x
float32 y
float32 theta
string name
---
float32 x
float32 y
float32 theta
string name
")



(provide :ohm_mecanum_sim/Spawn "c1497b6490cf67615397a2f4c091d32a")


