; Auto-generated. Do not edit!


(cl:in-package agv_msgs-srv)


;//! \htmlinclude Dmode-request.msg.html

(cl:defclass <Dmode-request> (roslisp-msg-protocol:ros-message)
  ((mode
    :reader mode
    :initarg :mode
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Dmode-request (<Dmode-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Dmode-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Dmode-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name agv_msgs-srv:<Dmode-request> is deprecated: use agv_msgs-srv:Dmode-request instead.")))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <Dmode-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-srv:mode-val is deprecated.  Use agv_msgs-srv:mode instead.")
  (mode m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Dmode-request>) ostream)
  "Serializes a message object of type '<Dmode-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'mode) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Dmode-request>) istream)
  "Deserializes a message object of type '<Dmode-request>"
    (cl:setf (cl:slot-value msg 'mode) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Dmode-request>)))
  "Returns string type for a service object of type '<Dmode-request>"
  "agv_msgs/DmodeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Dmode-request)))
  "Returns string type for a service object of type 'Dmode-request"
  "agv_msgs/DmodeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Dmode-request>)))
  "Returns md5sum for a message object of type '<Dmode-request>"
  "6252fca798177ba9926f15b28891aedb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Dmode-request)))
  "Returns md5sum for a message object of type 'Dmode-request"
  "6252fca798177ba9926f15b28891aedb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Dmode-request>)))
  "Returns full string definition for message of type '<Dmode-request>"
  (cl:format cl:nil "#request false:现场控制 true:远端控制~%bool mode~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Dmode-request)))
  "Returns full string definition for message of type 'Dmode-request"
  (cl:format cl:nil "#request false:现场控制 true:远端控制~%bool mode~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Dmode-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Dmode-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Dmode-request
    (cl:cons ':mode (mode msg))
))
;//! \htmlinclude Dmode-response.msg.html

(cl:defclass <Dmode-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Dmode-response (<Dmode-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Dmode-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Dmode-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name agv_msgs-srv:<Dmode-response> is deprecated: use agv_msgs-srv:Dmode-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <Dmode-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-srv:result-val is deprecated.  Use agv_msgs-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Dmode-response>) ostream)
  "Serializes a message object of type '<Dmode-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Dmode-response>) istream)
  "Deserializes a message object of type '<Dmode-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Dmode-response>)))
  "Returns string type for a service object of type '<Dmode-response>"
  "agv_msgs/DmodeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Dmode-response)))
  "Returns string type for a service object of type 'Dmode-response"
  "agv_msgs/DmodeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Dmode-response>)))
  "Returns md5sum for a message object of type '<Dmode-response>"
  "6252fca798177ba9926f15b28891aedb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Dmode-response)))
  "Returns md5sum for a message object of type 'Dmode-response"
  "6252fca798177ba9926f15b28891aedb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Dmode-response>)))
  "Returns full string definition for message of type '<Dmode-response>"
  (cl:format cl:nil "#response~%bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Dmode-response)))
  "Returns full string definition for message of type 'Dmode-response"
  (cl:format cl:nil "#response~%bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Dmode-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Dmode-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Dmode-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Dmode)))
  'Dmode-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Dmode)))
  'Dmode-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Dmode)))
  "Returns string type for a service object of type '<Dmode>"
  "agv_msgs/Dmode")