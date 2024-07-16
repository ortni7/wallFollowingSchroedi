; Auto-generated. Do not edit!


(cl:in-package ohm_mecanum_sim-msg)


;//! \htmlinclude WheelSpeed.msg.html

(cl:defclass <WheelSpeed> (roslisp-msg-protocol:ros-message)
  ((w_front_left
    :reader w_front_left
    :initarg :w_front_left
    :type cl:float
    :initform 0.0)
   (w_front_right
    :reader w_front_right
    :initarg :w_front_right
    :type cl:float
    :initform 0.0)
   (w_rear_left
    :reader w_rear_left
    :initarg :w_rear_left
    :type cl:float
    :initform 0.0)
   (w_rear_right
    :reader w_rear_right
    :initarg :w_rear_right
    :type cl:float
    :initform 0.0))
)

(cl:defclass WheelSpeed (<WheelSpeed>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WheelSpeed>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WheelSpeed)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ohm_mecanum_sim-msg:<WheelSpeed> is deprecated: use ohm_mecanum_sim-msg:WheelSpeed instead.")))

(cl:ensure-generic-function 'w_front_left-val :lambda-list '(m))
(cl:defmethod w_front_left-val ((m <WheelSpeed>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ohm_mecanum_sim-msg:w_front_left-val is deprecated.  Use ohm_mecanum_sim-msg:w_front_left instead.")
  (w_front_left m))

(cl:ensure-generic-function 'w_front_right-val :lambda-list '(m))
(cl:defmethod w_front_right-val ((m <WheelSpeed>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ohm_mecanum_sim-msg:w_front_right-val is deprecated.  Use ohm_mecanum_sim-msg:w_front_right instead.")
  (w_front_right m))

(cl:ensure-generic-function 'w_rear_left-val :lambda-list '(m))
(cl:defmethod w_rear_left-val ((m <WheelSpeed>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ohm_mecanum_sim-msg:w_rear_left-val is deprecated.  Use ohm_mecanum_sim-msg:w_rear_left instead.")
  (w_rear_left m))

(cl:ensure-generic-function 'w_rear_right-val :lambda-list '(m))
(cl:defmethod w_rear_right-val ((m <WheelSpeed>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ohm_mecanum_sim-msg:w_rear_right-val is deprecated.  Use ohm_mecanum_sim-msg:w_rear_right instead.")
  (w_rear_right m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WheelSpeed>) ostream)
  "Serializes a message object of type '<WheelSpeed>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'w_front_left))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'w_front_right))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'w_rear_left))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'w_rear_right))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WheelSpeed>) istream)
  "Deserializes a message object of type '<WheelSpeed>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'w_front_left) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'w_front_right) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'w_rear_left) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'w_rear_right) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WheelSpeed>)))
  "Returns string type for a message object of type '<WheelSpeed>"
  "ohm_mecanum_sim/WheelSpeed")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WheelSpeed)))
  "Returns string type for a message object of type 'WheelSpeed"
  "ohm_mecanum_sim/WheelSpeed")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WheelSpeed>)))
  "Returns md5sum for a message object of type '<WheelSpeed>"
  "563013483b74b26d9449c1178a7c0316")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WheelSpeed)))
  "Returns md5sum for a message object of type 'WheelSpeed"
  "563013483b74b26d9449c1178a7c0316")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WheelSpeed>)))
  "Returns full string definition for message of type '<WheelSpeed>"
  (cl:format cl:nil "float64 w_front_left~%float64 w_front_right~%float64 w_rear_left~%float64 w_rear_right~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WheelSpeed)))
  "Returns full string definition for message of type 'WheelSpeed"
  (cl:format cl:nil "float64 w_front_left~%float64 w_front_right~%float64 w_rear_left~%float64 w_rear_right~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WheelSpeed>))
  (cl:+ 0
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WheelSpeed>))
  "Converts a ROS message object to a list"
  (cl:list 'WheelSpeed
    (cl:cons ':w_front_left (w_front_left msg))
    (cl:cons ':w_front_right (w_front_right msg))
    (cl:cons ':w_rear_left (w_rear_left msg))
    (cl:cons ':w_rear_right (w_rear_right msg))
))
