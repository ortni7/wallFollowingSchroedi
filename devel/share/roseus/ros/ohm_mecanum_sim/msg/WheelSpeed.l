;; Auto-generated. Do not edit!


(when (boundp 'ohm_mecanum_sim::WheelSpeed)
  (if (not (find-package "OHM_MECANUM_SIM"))
    (make-package "OHM_MECANUM_SIM"))
  (shadow 'WheelSpeed (find-package "OHM_MECANUM_SIM")))
(unless (find-package "OHM_MECANUM_SIM::WHEELSPEED")
  (make-package "OHM_MECANUM_SIM::WHEELSPEED"))

(in-package "ROS")
;;//! \htmlinclude WheelSpeed.msg.html


(defclass ohm_mecanum_sim::WheelSpeed
  :super ros::object
  :slots (_w_front_left _w_front_right _w_rear_left _w_rear_right ))

(defmethod ohm_mecanum_sim::WheelSpeed
  (:init
   (&key
    ((:w_front_left __w_front_left) 0.0)
    ((:w_front_right __w_front_right) 0.0)
    ((:w_rear_left __w_rear_left) 0.0)
    ((:w_rear_right __w_rear_right) 0.0)
    )
   (send-super :init)
   (setq _w_front_left (float __w_front_left))
   (setq _w_front_right (float __w_front_right))
   (setq _w_rear_left (float __w_rear_left))
   (setq _w_rear_right (float __w_rear_right))
   self)
  (:w_front_left
   (&optional __w_front_left)
   (if __w_front_left (setq _w_front_left __w_front_left)) _w_front_left)
  (:w_front_right
   (&optional __w_front_right)
   (if __w_front_right (setq _w_front_right __w_front_right)) _w_front_right)
  (:w_rear_left
   (&optional __w_rear_left)
   (if __w_rear_left (setq _w_rear_left __w_rear_left)) _w_rear_left)
  (:w_rear_right
   (&optional __w_rear_right)
   (if __w_rear_right (setq _w_rear_right __w_rear_right)) _w_rear_right)
  (:serialization-length
   ()
   (+
    ;; float64 _w_front_left
    8
    ;; float64 _w_front_right
    8
    ;; float64 _w_rear_left
    8
    ;; float64 _w_rear_right
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _w_front_left
       (sys::poke _w_front_left (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _w_front_right
       (sys::poke _w_front_right (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _w_rear_left
       (sys::poke _w_rear_left (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _w_rear_right
       (sys::poke _w_rear_right (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _w_front_left
     (setq _w_front_left (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _w_front_right
     (setq _w_front_right (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _w_rear_left
     (setq _w_rear_left (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _w_rear_right
     (setq _w_rear_right (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get ohm_mecanum_sim::WheelSpeed :md5sum-) "563013483b74b26d9449c1178a7c0316")
(setf (get ohm_mecanum_sim::WheelSpeed :datatype-) "ohm_mecanum_sim/WheelSpeed")
(setf (get ohm_mecanum_sim::WheelSpeed :definition-)
      "float64 w_front_left
float64 w_front_right
float64 w_rear_left
float64 w_rear_right
")



(provide :ohm_mecanum_sim/WheelSpeed "563013483b74b26d9449c1178a7c0316")


