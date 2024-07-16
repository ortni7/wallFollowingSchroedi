;; Auto-generated. Do not edit!


(when (boundp 'ohm_mecanum_sim::Kill)
  (if (not (find-package "OHM_MECANUM_SIM"))
    (make-package "OHM_MECANUM_SIM"))
  (shadow 'Kill (find-package "OHM_MECANUM_SIM")))
(unless (find-package "OHM_MECANUM_SIM::KILL")
  (make-package "OHM_MECANUM_SIM::KILL"))
(unless (find-package "OHM_MECANUM_SIM::KILLREQUEST")
  (make-package "OHM_MECANUM_SIM::KILLREQUEST"))
(unless (find-package "OHM_MECANUM_SIM::KILLRESPONSE")
  (make-package "OHM_MECANUM_SIM::KILLRESPONSE"))

(in-package "ROS")





(defclass ohm_mecanum_sim::KillRequest
  :super ros::object
  :slots (_name ))

(defmethod ohm_mecanum_sim::KillRequest
  (:init
   (&key
    ((:name __name) "")
    )
   (send-super :init)
   (setq _name (string __name))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass ohm_mecanum_sim::KillResponse
  :super ros::object
  :slots (_success ))

(defmethod ohm_mecanum_sim::KillResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass ohm_mecanum_sim::Kill
  :super ros::object
  :slots ())

(setf (get ohm_mecanum_sim::Kill :md5sum-) "d08a3b641c2f8680fbdfb1ea2e17a3e1")
(setf (get ohm_mecanum_sim::Kill :datatype-) "ohm_mecanum_sim/Kill")
(setf (get ohm_mecanum_sim::Kill :request) ohm_mecanum_sim::KillRequest)
(setf (get ohm_mecanum_sim::Kill :response) ohm_mecanum_sim::KillResponse)

(defmethod ohm_mecanum_sim::KillRequest
  (:response () (instance ohm_mecanum_sim::KillResponse :init)))

(setf (get ohm_mecanum_sim::KillRequest :md5sum-) "d08a3b641c2f8680fbdfb1ea2e17a3e1")
(setf (get ohm_mecanum_sim::KillRequest :datatype-) "ohm_mecanum_sim/KillRequest")
(setf (get ohm_mecanum_sim::KillRequest :definition-)
      "string name
---
bool success
")

(setf (get ohm_mecanum_sim::KillResponse :md5sum-) "d08a3b641c2f8680fbdfb1ea2e17a3e1")
(setf (get ohm_mecanum_sim::KillResponse :datatype-) "ohm_mecanum_sim/KillResponse")
(setf (get ohm_mecanum_sim::KillResponse :definition-)
      "string name
---
bool success
")



(provide :ohm_mecanum_sim/Kill "d08a3b641c2f8680fbdfb1ea2e17a3e1")


