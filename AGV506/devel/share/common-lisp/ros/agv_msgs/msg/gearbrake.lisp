; Auto-generated. Do not edit!


(cl:in-package agv_msgs-msg)


;//! \htmlinclude gearbrake.msg.html

(cl:defclass <gearbrake> (roslisp-msg-protocol:ros-message)
  ((gear
    :reader gear
    :initarg :gear
    :type cl:fixnum
    :initform 0)
   (brake
    :reader brake
    :initarg :brake
    :type cl:fixnum
    :initform 0)
   (accelerator
    :reader accelerator
    :initarg :accelerator
    :type cl:integer
    :initform 0))
)

(cl:defclass gearbrake (<gearbrake>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <gearbrake>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'gearbrake)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name agv_msgs-msg:<gearbrake> is deprecated: use agv_msgs-msg:gearbrake instead.")))

(cl:ensure-generic-function 'gear-val :lambda-list '(m))
(cl:defmethod gear-val ((m <gearbrake>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:gear-val is deprecated.  Use agv_msgs-msg:gear instead.")
  (gear m))

(cl:ensure-generic-function 'brake-val :lambda-list '(m))
(cl:defmethod brake-val ((m <gearbrake>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:brake-val is deprecated.  Use agv_msgs-msg:brake instead.")
  (brake m))

(cl:ensure-generic-function 'accelerator-val :lambda-list '(m))
(cl:defmethod accelerator-val ((m <gearbrake>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:accelerator-val is deprecated.  Use agv_msgs-msg:accelerator instead.")
  (accelerator m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <gearbrake>) ostream)
  "Serializes a message object of type '<gearbrake>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gear)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'brake)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'accelerator)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'accelerator)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'accelerator)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'accelerator)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <gearbrake>) istream)
  "Deserializes a message object of type '<gearbrake>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gear)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'brake)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'accelerator)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'accelerator)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'accelerator)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'accelerator)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<gearbrake>)))
  "Returns string type for a message object of type '<gearbrake>"
  "agv_msgs/gearbrake")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'gearbrake)))
  "Returns string type for a message object of type 'gearbrake"
  "agv_msgs/gearbrake")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<gearbrake>)))
  "Returns md5sum for a message object of type '<gearbrake>"
  "010d6ca71c6e537a0de387e33a7506ee")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'gearbrake)))
  "Returns md5sum for a message object of type 'gearbrake"
  "010d6ca71c6e537a0de387e33a7506ee")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<gearbrake>)))
  "Returns full string definition for message of type '<gearbrake>"
  (cl:format cl:nil "uint8 gear # 档位~%uint8 brake # 刹车~%uint32 accelerator # 油门~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'gearbrake)))
  "Returns full string definition for message of type 'gearbrake"
  (cl:format cl:nil "uint8 gear # 档位~%uint8 brake # 刹车~%uint32 accelerator # 油门~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <gearbrake>))
  (cl:+ 0
     1
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <gearbrake>))
  "Converts a ROS message object to a list"
  (cl:list 'gearbrake
    (cl:cons ':gear (gear msg))
    (cl:cons ':brake (brake msg))
    (cl:cons ':accelerator (accelerator msg))
))
