; Auto-generated. Do not edit!


(cl:in-package agv_msgs-srv)


;//! \htmlinclude Fight-request.msg.html

(cl:defclass <Fight-request> (roslisp-msg-protocol:ros-message)
  ((fight
    :reader fight
    :initarg :fight
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Fight-request (<Fight-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Fight-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Fight-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name agv_msgs-srv:<Fight-request> is deprecated: use agv_msgs-srv:Fight-request instead.")))

(cl:ensure-generic-function 'fight-val :lambda-list '(m))
(cl:defmethod fight-val ((m <Fight-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-srv:fight-val is deprecated.  Use agv_msgs-srv:fight instead.")
  (fight m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Fight-request>) ostream)
  "Serializes a message object of type '<Fight-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'fight)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Fight-request>) istream)
  "Deserializes a message object of type '<Fight-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'fight)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Fight-request>)))
  "Returns string type for a service object of type '<Fight-request>"
  "agv_msgs/FightRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Fight-request)))
  "Returns string type for a service object of type 'Fight-request"
  "agv_msgs/FightRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Fight-request>)))
  "Returns md5sum for a message object of type '<Fight-request>"
  "09fc0f92efe2d6e4a553d7301c89ea7d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Fight-request)))
  "Returns md5sum for a message object of type 'Fight-request"
  "09fc0f92efe2d6e4a553d7301c89ea7d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Fight-request>)))
  "Returns full string definition for message of type '<Fight-request>"
  (cl:format cl:nil "#request 第0位:上升 第1位:下降 暂停:00~%uint8 fight~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Fight-request)))
  "Returns full string definition for message of type 'Fight-request"
  (cl:format cl:nil "#request 第0位:上升 第1位:下降 暂停:00~%uint8 fight~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Fight-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Fight-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Fight-request
    (cl:cons ':fight (fight msg))
))
;//! \htmlinclude Fight-response.msg.html

(cl:defclass <Fight-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Fight-response (<Fight-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Fight-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Fight-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name agv_msgs-srv:<Fight-response> is deprecated: use agv_msgs-srv:Fight-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <Fight-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-srv:result-val is deprecated.  Use agv_msgs-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Fight-response>) ostream)
  "Serializes a message object of type '<Fight-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Fight-response>) istream)
  "Deserializes a message object of type '<Fight-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Fight-response>)))
  "Returns string type for a service object of type '<Fight-response>"
  "agv_msgs/FightResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Fight-response)))
  "Returns string type for a service object of type 'Fight-response"
  "agv_msgs/FightResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Fight-response>)))
  "Returns md5sum for a message object of type '<Fight-response>"
  "09fc0f92efe2d6e4a553d7301c89ea7d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Fight-response)))
  "Returns md5sum for a message object of type 'Fight-response"
  "09fc0f92efe2d6e4a553d7301c89ea7d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Fight-response>)))
  "Returns full string definition for message of type '<Fight-response>"
  (cl:format cl:nil "#response~%bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Fight-response)))
  "Returns full string definition for message of type 'Fight-response"
  (cl:format cl:nil "#response~%bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Fight-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Fight-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Fight-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Fight)))
  'Fight-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Fight)))
  'Fight-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Fight)))
  "Returns string type for a service object of type '<Fight>"
  "agv_msgs/Fight")