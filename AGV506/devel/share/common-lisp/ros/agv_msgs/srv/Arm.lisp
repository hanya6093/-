; Auto-generated. Do not edit!


(cl:in-package agv_msgs-srv)


;//! \htmlinclude Arm-request.msg.html

(cl:defclass <Arm-request> (roslisp-msg-protocol:ros-message)
  ((arm
    :reader arm
    :initarg :arm
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Arm-request (<Arm-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Arm-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Arm-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name agv_msgs-srv:<Arm-request> is deprecated: use agv_msgs-srv:Arm-request instead.")))

(cl:ensure-generic-function 'arm-val :lambda-list '(m))
(cl:defmethod arm-val ((m <Arm-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-srv:arm-val is deprecated.  Use agv_msgs-srv:arm instead.")
  (arm m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Arm-request>) ostream)
  "Serializes a message object of type '<Arm-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'arm)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Arm-request>) istream)
  "Deserializes a message object of type '<Arm-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'arm)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Arm-request>)))
  "Returns string type for a service object of type '<Arm-request>"
  "agv_msgs/ArmRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Arm-request)))
  "Returns string type for a service object of type 'Arm-request"
  "agv_msgs/ArmRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Arm-request>)))
  "Returns md5sum for a message object of type '<Arm-request>"
  "dd0555f68f747c630a22ca214d8ef45c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Arm-request)))
  "Returns md5sum for a message object of type 'Arm-request"
  "dd0555f68f747c630a22ca214d8ef45c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Arm-request>)))
  "Returns full string definition for message of type '<Arm-request>"
  (cl:format cl:nil "#request 第0位:上升 第1位:下降 暂停:00~%uint8 arm~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Arm-request)))
  "Returns full string definition for message of type 'Arm-request"
  (cl:format cl:nil "#request 第0位:上升 第1位:下降 暂停:00~%uint8 arm~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Arm-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Arm-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Arm-request
    (cl:cons ':arm (arm msg))
))
;//! \htmlinclude Arm-response.msg.html

(cl:defclass <Arm-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Arm-response (<Arm-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Arm-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Arm-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name agv_msgs-srv:<Arm-response> is deprecated: use agv_msgs-srv:Arm-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <Arm-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-srv:result-val is deprecated.  Use agv_msgs-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Arm-response>) ostream)
  "Serializes a message object of type '<Arm-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Arm-response>) istream)
  "Deserializes a message object of type '<Arm-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Arm-response>)))
  "Returns string type for a service object of type '<Arm-response>"
  "agv_msgs/ArmResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Arm-response)))
  "Returns string type for a service object of type 'Arm-response"
  "agv_msgs/ArmResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Arm-response>)))
  "Returns md5sum for a message object of type '<Arm-response>"
  "dd0555f68f747c630a22ca214d8ef45c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Arm-response)))
  "Returns md5sum for a message object of type 'Arm-response"
  "dd0555f68f747c630a22ca214d8ef45c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Arm-response>)))
  "Returns full string definition for message of type '<Arm-response>"
  (cl:format cl:nil "#response~%bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Arm-response)))
  "Returns full string definition for message of type 'Arm-response"
  (cl:format cl:nil "#response~%bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Arm-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Arm-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Arm-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Arm)))
  'Arm-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Arm)))
  'Arm-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Arm)))
  "Returns string type for a service object of type '<Arm>"
  "agv_msgs/Arm")