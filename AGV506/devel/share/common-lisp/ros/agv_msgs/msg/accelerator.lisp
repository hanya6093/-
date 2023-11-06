; Auto-generated. Do not edit!


(cl:in-package agv_msgs-msg)


;//! \htmlinclude accelerator.msg.html

(cl:defclass <accelerator> (roslisp-msg-protocol:ros-message)
  ((accelerator
    :reader accelerator
    :initarg :accelerator
    :type cl:integer
    :initform 0))
)

(cl:defclass accelerator (<accelerator>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <accelerator>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'accelerator)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name agv_msgs-msg:<accelerator> is deprecated: use agv_msgs-msg:accelerator instead.")))

(cl:ensure-generic-function 'accelerator-val :lambda-list '(m))
(cl:defmethod accelerator-val ((m <accelerator>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:accelerator-val is deprecated.  Use agv_msgs-msg:accelerator instead.")
  (accelerator m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <accelerator>) ostream)
  "Serializes a message object of type '<accelerator>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'accelerator)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'accelerator)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'accelerator)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'accelerator)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <accelerator>) istream)
  "Deserializes a message object of type '<accelerator>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'accelerator)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'accelerator)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'accelerator)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'accelerator)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<accelerator>)))
  "Returns string type for a message object of type '<accelerator>"
  "agv_msgs/accelerator")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'accelerator)))
  "Returns string type for a message object of type 'accelerator"
  "agv_msgs/accelerator")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<accelerator>)))
  "Returns md5sum for a message object of type '<accelerator>"
  "d267542ebde270d3d9efa2af5f119108")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'accelerator)))
  "Returns md5sum for a message object of type 'accelerator"
  "d267542ebde270d3d9efa2af5f119108")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<accelerator>)))
  "Returns full string definition for message of type '<accelerator>"
  (cl:format cl:nil "uint32 accelerator # 油门数据~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'accelerator)))
  "Returns full string definition for message of type 'accelerator"
  (cl:format cl:nil "uint32 accelerator # 油门数据~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <accelerator>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <accelerator>))
  "Converts a ROS message object to a list"
  (cl:list 'accelerator
    (cl:cons ':accelerator (accelerator msg))
))
