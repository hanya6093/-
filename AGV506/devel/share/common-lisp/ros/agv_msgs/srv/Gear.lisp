; Auto-generated. Do not edit!


(cl:in-package agv_msgs-srv)


;//! \htmlinclude Gear-request.msg.html

(cl:defclass <Gear-request> (roslisp-msg-protocol:ros-message)
  ((gear
    :reader gear
    :initarg :gear
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Gear-request (<Gear-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Gear-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Gear-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name agv_msgs-srv:<Gear-request> is deprecated: use agv_msgs-srv:Gear-request instead.")))

(cl:ensure-generic-function 'gear-val :lambda-list '(m))
(cl:defmethod gear-val ((m <Gear-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-srv:gear-val is deprecated.  Use agv_msgs-srv:gear instead.")
  (gear m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Gear-request>) ostream)
  "Serializes a message object of type '<Gear-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gear)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Gear-request>) istream)
  "Deserializes a message object of type '<Gear-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gear)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Gear-request>)))
  "Returns string type for a service object of type '<Gear-request>"
  "agv_msgs/GearRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Gear-request)))
  "Returns string type for a service object of type 'Gear-request"
  "agv_msgs/GearRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Gear-request>)))
  "Returns md5sum for a message object of type '<Gear-request>"
  "5a7aecb244ae18cb4ccc55473751bb35")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Gear-request)))
  "Returns md5sum for a message object of type 'Gear-request"
  "5a7aecb244ae18cb4ccc55473751bb35")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Gear-request>)))
  "Returns full string definition for message of type '<Gear-request>"
  (cl:format cl:nil "#requset 第0位:上升 第1位:下降 暂停:00~%uint8 gear ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Gear-request)))
  "Returns full string definition for message of type 'Gear-request"
  (cl:format cl:nil "#requset 第0位:上升 第1位:下降 暂停:00~%uint8 gear ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Gear-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Gear-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Gear-request
    (cl:cons ':gear (gear msg))
))
;//! \htmlinclude Gear-response.msg.html

(cl:defclass <Gear-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Gear-response (<Gear-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Gear-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Gear-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name agv_msgs-srv:<Gear-response> is deprecated: use agv_msgs-srv:Gear-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <Gear-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-srv:result-val is deprecated.  Use agv_msgs-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Gear-response>) ostream)
  "Serializes a message object of type '<Gear-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Gear-response>) istream)
  "Deserializes a message object of type '<Gear-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Gear-response>)))
  "Returns string type for a service object of type '<Gear-response>"
  "agv_msgs/GearResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Gear-response)))
  "Returns string type for a service object of type 'Gear-response"
  "agv_msgs/GearResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Gear-response>)))
  "Returns md5sum for a message object of type '<Gear-response>"
  "5a7aecb244ae18cb4ccc55473751bb35")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Gear-response)))
  "Returns md5sum for a message object of type 'Gear-response"
  "5a7aecb244ae18cb4ccc55473751bb35")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Gear-response>)))
  "Returns full string definition for message of type '<Gear-response>"
  (cl:format cl:nil "#response~%bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Gear-response)))
  "Returns full string definition for message of type 'Gear-response"
  (cl:format cl:nil "#response~%bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Gear-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Gear-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Gear-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Gear)))
  'Gear-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Gear)))
  'Gear-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Gear)))
  "Returns string type for a service object of type '<Gear>"
  "agv_msgs/Gear")