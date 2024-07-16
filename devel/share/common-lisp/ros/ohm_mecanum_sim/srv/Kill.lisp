; Auto-generated. Do not edit!


(cl:in-package ohm_mecanum_sim-srv)


;//! \htmlinclude Kill-request.msg.html

(cl:defclass <Kill-request> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform ""))
)

(cl:defclass Kill-request (<Kill-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Kill-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Kill-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ohm_mecanum_sim-srv:<Kill-request> is deprecated: use ohm_mecanum_sim-srv:Kill-request instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <Kill-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ohm_mecanum_sim-srv:name-val is deprecated.  Use ohm_mecanum_sim-srv:name instead.")
  (name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Kill-request>) ostream)
  "Serializes a message object of type '<Kill-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Kill-request>) istream)
  "Deserializes a message object of type '<Kill-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Kill-request>)))
  "Returns string type for a service object of type '<Kill-request>"
  "ohm_mecanum_sim/KillRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Kill-request)))
  "Returns string type for a service object of type 'Kill-request"
  "ohm_mecanum_sim/KillRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Kill-request>)))
  "Returns md5sum for a message object of type '<Kill-request>"
  "d08a3b641c2f8680fbdfb1ea2e17a3e1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Kill-request)))
  "Returns md5sum for a message object of type 'Kill-request"
  "d08a3b641c2f8680fbdfb1ea2e17a3e1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Kill-request>)))
  "Returns full string definition for message of type '<Kill-request>"
  (cl:format cl:nil "string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Kill-request)))
  "Returns full string definition for message of type 'Kill-request"
  (cl:format cl:nil "string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Kill-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Kill-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Kill-request
    (cl:cons ':name (name msg))
))
;//! \htmlinclude Kill-response.msg.html

(cl:defclass <Kill-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Kill-response (<Kill-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Kill-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Kill-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ohm_mecanum_sim-srv:<Kill-response> is deprecated: use ohm_mecanum_sim-srv:Kill-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <Kill-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ohm_mecanum_sim-srv:success-val is deprecated.  Use ohm_mecanum_sim-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Kill-response>) ostream)
  "Serializes a message object of type '<Kill-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Kill-response>) istream)
  "Deserializes a message object of type '<Kill-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Kill-response>)))
  "Returns string type for a service object of type '<Kill-response>"
  "ohm_mecanum_sim/KillResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Kill-response)))
  "Returns string type for a service object of type 'Kill-response"
  "ohm_mecanum_sim/KillResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Kill-response>)))
  "Returns md5sum for a message object of type '<Kill-response>"
  "d08a3b641c2f8680fbdfb1ea2e17a3e1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Kill-response)))
  "Returns md5sum for a message object of type 'Kill-response"
  "d08a3b641c2f8680fbdfb1ea2e17a3e1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Kill-response>)))
  "Returns full string definition for message of type '<Kill-response>"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Kill-response)))
  "Returns full string definition for message of type 'Kill-response"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Kill-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Kill-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Kill-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Kill)))
  'Kill-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Kill)))
  'Kill-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Kill)))
  "Returns string type for a service object of type '<Kill>"
  "ohm_mecanum_sim/Kill")