;; Auto-generated. Do not edit!


(when (boundp 'agv_msgs::Gear)
  (if (not (find-package "AGV_MSGS"))
    (make-package "AGV_MSGS"))
  (shadow 'Gear (find-package "AGV_MSGS")))
(unless (find-package "AGV_MSGS::GEAR")
  (make-package "AGV_MSGS::GEAR"))
(unless (find-package "AGV_MSGS::GEARREQUEST")
  (make-package "AGV_MSGS::GEARREQUEST"))
(unless (find-package "AGV_MSGS::GEARRESPONSE")
  (make-package "AGV_MSGS::GEARRESPONSE"))

(in-package "ROS")





(defclass agv_msgs::GearRequest
  :super ros::object
  :slots (_gear ))

(defmethod agv_msgs::GearRequest
  (:init
   (&key
    ((:gear __gear) 0)
    )
   (send-super :init)
   (setq _gear (round __gear))
   self)
  (:gear
   (&optional __gear)
   (if __gear (setq _gear __gear)) _gear)
  (:serialization-length
   ()
   (+
    ;; uint8 _gear
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _gear
       (write-byte _gear s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _gear
     (setq _gear (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass agv_msgs::GearResponse
  :super ros::object
  :slots (_result ))

(defmethod agv_msgs::GearResponse
  (:init
   (&key
    ((:result __result) nil)
    )
   (send-super :init)
   (setq _result __result)
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; bool _result
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _result
       (if _result (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _result
     (setq _result (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass agv_msgs::Gear
  :super ros::object
  :slots ())

(setf (get agv_msgs::Gear :md5sum-) "5a7aecb244ae18cb4ccc55473751bb35")
(setf (get agv_msgs::Gear :datatype-) "agv_msgs/Gear")
(setf (get agv_msgs::Gear :request) agv_msgs::GearRequest)
(setf (get agv_msgs::Gear :response) agv_msgs::GearResponse)

(defmethod agv_msgs::GearRequest
  (:response () (instance agv_msgs::GearResponse :init)))

(setf (get agv_msgs::GearRequest :md5sum-) "5a7aecb244ae18cb4ccc55473751bb35")
(setf (get agv_msgs::GearRequest :datatype-) "agv_msgs/GearRequest")
(setf (get agv_msgs::GearRequest :definition-)
      "#requset 第0位:上升 第1位:下降 暂停:00
uint8 gear 
---
#response
bool result
")

(setf (get agv_msgs::GearResponse :md5sum-) "5a7aecb244ae18cb4ccc55473751bb35")
(setf (get agv_msgs::GearResponse :datatype-) "agv_msgs/GearResponse")
(setf (get agv_msgs::GearResponse :definition-)
      "#requset 第0位:上升 第1位:下降 暂停:00
uint8 gear 
---
#response
bool result
")



(provide :agv_msgs/Gear "5a7aecb244ae18cb4ccc55473751bb35")


