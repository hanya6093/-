; Auto-generated. Do not edit!


(cl:in-package agv_msgs-msg)


;//! \htmlinclude direction.msg.html

(cl:defclass <direction> (roslisp-msg-protocol:ros-message)
  ((angle
    :reader angle
    :initarg :angle
    :type cl:integer
    :initform 0))
)

(cl:defclass direction (<direction>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <direction>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'direction)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name agv_msgs-msg:<direction> is deprecated: use agv_msgs-msg:direction instead.")))

(cl:ensure-generic-function 'angle-val :lambda-list '(m))
(cl:defmethod angle-val ((m <direction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:angle-val is deprecated.  Use agv_msgs-msg:angle instead.")
  (angle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <direction>) ostream)
  "Serializes a message object of type '<direction>"
  (cl:let* ((signed (cl:slot-value msg 'angle)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <direction>) istream)
  "Deserializes a message object of type '<direction>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'angle) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<direction>)))
  "Returns string type for a message object of type '<direction>"
  "agv_msgs/direction")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'direction)))
  "Returns string type for a message object of type 'direction"
  "agv_msgs/direction")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<direction>)))
  "Returns md5sum for a message object of type '<direction>"
  "de62f7ef8463d5c42dacb6932cbd1470")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'direction)))
  "Returns md5sum for a message object of type 'direction"
  "de62f7ef8463d5c42dacb6932cbd1470")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<direction>)))
  "Returns full string definition for message of type '<direction>"
  (cl:format cl:nil "int32 angle # 角度~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'direction)))
  "Returns full string definition for message of type 'direction"
  (cl:format cl:nil "int32 angle # 角度~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <direction>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <direction>))
  "Converts a ROS message object to a list"
  (cl:list 'direction
    (cl:cons ':angle (angle msg))
))
