; Auto-generated. Do not edit!


(cl:in-package agv_msgs-msg)


;//! \htmlinclude p_dmode.msg.html

(cl:defclass <p_dmode> (roslisp-msg-protocol:ros-message)
  ((mode
    :reader mode
    :initarg :mode
    :type cl:fixnum
    :initform 0))
)

(cl:defclass p_dmode (<p_dmode>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <p_dmode>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'p_dmode)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name agv_msgs-msg:<p_dmode> is deprecated: use agv_msgs-msg:p_dmode instead.")))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <p_dmode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:mode-val is deprecated.  Use agv_msgs-msg:mode instead.")
  (mode m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <p_dmode>) ostream)
  "Serializes a message object of type '<p_dmode>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <p_dmode>) istream)
  "Deserializes a message object of type '<p_dmode>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<p_dmode>)))
  "Returns string type for a message object of type '<p_dmode>"
  "agv_msgs/p_dmode")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'p_dmode)))
  "Returns string type for a message object of type 'p_dmode"
  "agv_msgs/p_dmode")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<p_dmode>)))
  "Returns md5sum for a message object of type '<p_dmode>"
  "89b81386720be1cd0ce7a3953fcd1b19")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'p_dmode)))
  "Returns md5sum for a message object of type 'p_dmode"
  "89b81386720be1cd0ce7a3953fcd1b19")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<p_dmode>)))
  "Returns full string definition for message of type '<p_dmode>"
  (cl:format cl:nil "uint8 mode # 驾驶方式~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'p_dmode)))
  "Returns full string definition for message of type 'p_dmode"
  (cl:format cl:nil "uint8 mode # 驾驶方式~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <p_dmode>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <p_dmode>))
  "Converts a ROS message object to a list"
  (cl:list 'p_dmode
    (cl:cons ':mode (mode msg))
))
