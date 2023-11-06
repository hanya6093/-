; Auto-generated. Do not edit!


(cl:in-package agv_msgs-srv)


;//! \htmlinclude Light-request.msg.html

(cl:defclass <Light-request> (roslisp-msg-protocol:ros-message)
  ((light
    :reader light
    :initarg :light
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Light-request (<Light-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Light-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Light-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name agv_msgs-srv:<Light-request> is deprecated: use agv_msgs-srv:Light-request instead.")))

(cl:ensure-generic-function 'light-val :lambda-list '(m))
(cl:defmethod light-val ((m <Light-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-srv:light-val is deprecated.  Use agv_msgs-srv:light instead.")
  (light m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Light-request>) ostream)
  "Serializes a message object of type '<Light-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'light) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Light-request>) istream)
  "Deserializes a message object of type '<Light-request>"
    (cl:setf (cl:slot-value msg 'light) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Light-request>)))
  "Returns string type for a service object of type '<Light-request>"
  "agv_msgs/LightRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Light-request)))
  "Returns string type for a service object of type 'Light-request"
  "agv_msgs/LightRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Light-request>)))
  "Returns md5sum for a message object of type '<Light-request>"
  "199df97571fbe4ca40cb7e26d6991a7a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Light-request)))
  "Returns md5sum for a message object of type 'Light-request"
  "199df97571fbe4ca40cb7e26d6991a7a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Light-request>)))
  "Returns full string definition for message of type '<Light-request>"
  (cl:format cl:nil "#request ~%bool light~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Light-request)))
  "Returns full string definition for message of type 'Light-request"
  (cl:format cl:nil "#request ~%bool light~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Light-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Light-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Light-request
    (cl:cons ':light (light msg))
))
;//! \htmlinclude Light-response.msg.html

(cl:defclass <Light-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Light-response (<Light-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Light-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Light-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name agv_msgs-srv:<Light-response> is deprecated: use agv_msgs-srv:Light-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <Light-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-srv:result-val is deprecated.  Use agv_msgs-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Light-response>) ostream)
  "Serializes a message object of type '<Light-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Light-response>) istream)
  "Deserializes a message object of type '<Light-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Light-response>)))
  "Returns string type for a service object of type '<Light-response>"
  "agv_msgs/LightResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Light-response)))
  "Returns string type for a service object of type 'Light-response"
  "agv_msgs/LightResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Light-response>)))
  "Returns md5sum for a message object of type '<Light-response>"
  "199df97571fbe4ca40cb7e26d6991a7a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Light-response)))
  "Returns md5sum for a message object of type 'Light-response"
  "199df97571fbe4ca40cb7e26d6991a7a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Light-response>)))
  "Returns full string definition for message of type '<Light-response>"
  (cl:format cl:nil "#response~%bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Light-response)))
  "Returns full string definition for message of type 'Light-response"
  (cl:format cl:nil "#response~%bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Light-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Light-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Light-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Light)))
  'Light-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Light)))
  'Light-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Light)))
  "Returns string type for a service object of type '<Light>"
  "agv_msgs/Light")