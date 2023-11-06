; Auto-generated. Do not edit!


(cl:in-package agv_msgs-msg)


;//! \htmlinclude ultrasonicRadar.msg.html

(cl:defclass <ultrasonicRadar> (roslisp-msg-protocol:ros-message)
  ((radar1
    :reader radar1
    :initarg :radar1
    :type cl:float
    :initform 0.0)
   (radar2
    :reader radar2
    :initarg :radar2
    :type cl:float
    :initform 0.0))
)

(cl:defclass ultrasonicRadar (<ultrasonicRadar>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ultrasonicRadar>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ultrasonicRadar)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name agv_msgs-msg:<ultrasonicRadar> is deprecated: use agv_msgs-msg:ultrasonicRadar instead.")))

(cl:ensure-generic-function 'radar1-val :lambda-list '(m))
(cl:defmethod radar1-val ((m <ultrasonicRadar>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:radar1-val is deprecated.  Use agv_msgs-msg:radar1 instead.")
  (radar1 m))

(cl:ensure-generic-function 'radar2-val :lambda-list '(m))
(cl:defmethod radar2-val ((m <ultrasonicRadar>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:radar2-val is deprecated.  Use agv_msgs-msg:radar2 instead.")
  (radar2 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ultrasonicRadar>) ostream)
  "Serializes a message object of type '<ultrasonicRadar>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'radar1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'radar2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ultrasonicRadar>) istream)
  "Deserializes a message object of type '<ultrasonicRadar>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'radar1) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'radar2) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ultrasonicRadar>)))
  "Returns string type for a message object of type '<ultrasonicRadar>"
  "agv_msgs/ultrasonicRadar")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ultrasonicRadar)))
  "Returns string type for a message object of type 'ultrasonicRadar"
  "agv_msgs/ultrasonicRadar")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ultrasonicRadar>)))
  "Returns md5sum for a message object of type '<ultrasonicRadar>"
  "7b410d2498d0c5dc3043e12d93b45707")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ultrasonicRadar)))
  "Returns md5sum for a message object of type 'ultrasonicRadar"
  "7b410d2498d0c5dc3043e12d93b45707")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ultrasonicRadar>)))
  "Returns full string definition for message of type '<ultrasonicRadar>"
  (cl:format cl:nil "float32 radar1 # 雷达1距离~%float32 radar2 # 雷达2距离~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ultrasonicRadar)))
  "Returns full string definition for message of type 'ultrasonicRadar"
  (cl:format cl:nil "float32 radar1 # 雷达1距离~%float32 radar2 # 雷达2距离~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ultrasonicRadar>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ultrasonicRadar>))
  "Converts a ROS message object to a list"
  (cl:list 'ultrasonicRadar
    (cl:cons ':radar1 (radar1 msg))
    (cl:cons ':radar2 (radar2 msg))
))
