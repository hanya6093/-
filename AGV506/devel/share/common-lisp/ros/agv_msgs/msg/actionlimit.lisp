; Auto-generated. Do not edit!


(cl:in-package agv_msgs-msg)


;//! \htmlinclude actionlimit.msg.html

(cl:defclass <actionlimit> (roslisp-msg-protocol:ros-message)
  ((armlimit
    :reader armlimit
    :initarg :armlimit
    :type cl:fixnum
    :initform 0)
   (fightlimit
    :reader fightlimit
    :initarg :fightlimit
    :type cl:fixnum
    :initform 0))
)

(cl:defclass actionlimit (<actionlimit>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <actionlimit>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'actionlimit)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name agv_msgs-msg:<actionlimit> is deprecated: use agv_msgs-msg:actionlimit instead.")))

(cl:ensure-generic-function 'armlimit-val :lambda-list '(m))
(cl:defmethod armlimit-val ((m <actionlimit>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:armlimit-val is deprecated.  Use agv_msgs-msg:armlimit instead.")
  (armlimit m))

(cl:ensure-generic-function 'fightlimit-val :lambda-list '(m))
(cl:defmethod fightlimit-val ((m <actionlimit>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:fightlimit-val is deprecated.  Use agv_msgs-msg:fightlimit instead.")
  (fightlimit m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <actionlimit>) ostream)
  "Serializes a message object of type '<actionlimit>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'armlimit)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'fightlimit)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <actionlimit>) istream)
  "Deserializes a message object of type '<actionlimit>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'armlimit)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'fightlimit)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<actionlimit>)))
  "Returns string type for a message object of type '<actionlimit>"
  "agv_msgs/actionlimit")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'actionlimit)))
  "Returns string type for a message object of type 'actionlimit"
  "agv_msgs/actionlimit")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<actionlimit>)))
  "Returns md5sum for a message object of type '<actionlimit>"
  "d6ed2d9fe059b091ce8972987df0bc2d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'actionlimit)))
  "Returns md5sum for a message object of type 'actionlimit"
  "d6ed2d9fe059b091ce8972987df0bc2d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<actionlimit>)))
  "Returns full string definition for message of type '<actionlimit>"
  (cl:format cl:nil "uint8 armlimit # 大臂和限位1 2~%uint8 fightlimit  # 推斗和限位3 4~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'actionlimit)))
  "Returns full string definition for message of type 'actionlimit"
  (cl:format cl:nil "uint8 armlimit # 大臂和限位1 2~%uint8 fightlimit  # 推斗和限位3 4~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <actionlimit>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <actionlimit>))
  "Converts a ROS message object to a list"
  (cl:list 'actionlimit
    (cl:cons ':armlimit (armlimit msg))
    (cl:cons ':fightlimit (fightlimit msg))
))
