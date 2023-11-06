; Auto-generated. Do not edit!


(cl:in-package agv_msgs-msg)


;//! \htmlinclude lightbuzzer.msg.html

(cl:defclass <lightbuzzer> (roslisp-msg-protocol:ros-message)
  ((light
    :reader light
    :initarg :light
    :type cl:fixnum
    :initform 0)
   (buzzer
    :reader buzzer
    :initarg :buzzer
    :type cl:fixnum
    :initform 0))
)

(cl:defclass lightbuzzer (<lightbuzzer>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <lightbuzzer>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'lightbuzzer)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name agv_msgs-msg:<lightbuzzer> is deprecated: use agv_msgs-msg:lightbuzzer instead.")))

(cl:ensure-generic-function 'light-val :lambda-list '(m))
(cl:defmethod light-val ((m <lightbuzzer>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:light-val is deprecated.  Use agv_msgs-msg:light instead.")
  (light m))

(cl:ensure-generic-function 'buzzer-val :lambda-list '(m))
(cl:defmethod buzzer-val ((m <lightbuzzer>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:buzzer-val is deprecated.  Use agv_msgs-msg:buzzer instead.")
  (buzzer m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <lightbuzzer>) ostream)
  "Serializes a message object of type '<lightbuzzer>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'light)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'buzzer)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <lightbuzzer>) istream)
  "Deserializes a message object of type '<lightbuzzer>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'light)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'buzzer)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<lightbuzzer>)))
  "Returns string type for a message object of type '<lightbuzzer>"
  "agv_msgs/lightbuzzer")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'lightbuzzer)))
  "Returns string type for a message object of type 'lightbuzzer"
  "agv_msgs/lightbuzzer")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<lightbuzzer>)))
  "Returns md5sum for a message object of type '<lightbuzzer>"
  "a462c3b9113a37311f2fdfd366a4203b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'lightbuzzer)))
  "Returns md5sum for a message object of type 'lightbuzzer"
  "a462c3b9113a37311f2fdfd366a4203b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<lightbuzzer>)))
  "Returns full string definition for message of type '<lightbuzzer>"
  (cl:format cl:nil "uint8 light # 灯光~%uint8 buzzer # 蜂鸣器~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'lightbuzzer)))
  "Returns full string definition for message of type 'lightbuzzer"
  (cl:format cl:nil "uint8 light # 灯光~%uint8 buzzer # 蜂鸣器~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <lightbuzzer>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <lightbuzzer>))
  "Converts a ROS message object to a list"
  (cl:list 'lightbuzzer
    (cl:cons ':light (light msg))
    (cl:cons ':buzzer (buzzer msg))
))
