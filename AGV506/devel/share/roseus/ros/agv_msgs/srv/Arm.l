;; Auto-generated. Do not edit!


(when (boundp 'agv_msgs::Arm)
  (if (not (find-package "AGV_MSGS"))
    (make-package "AGV_MSGS"))
  (shadow 'Arm (find-package "AGV_MSGS")))
(unless (find-package "AGV_MSGS::ARM")
  (make-package "AGV_MSGS::ARM"))
(unless (find-package "AGV_MSGS::ARMREQUEST")
  (make-package "AGV_MSGS::ARMREQUEST"))
(unless (find-package "AGV_MSGS::ARMRESPONSE")
  (make-package "AGV_MSGS::ARMRESPONSE"))

(in-package "ROS")





(defclass agv_msgs::ArmRequest
  :super ros::object
  :slots (_arm ))

(defmethod agv_msgs::ArmRequest
  (:init
   (&key
    ((:arm __arm) 0)
    )
   (send-super :init)
   (setq _arm (round __arm))
   self)
  (:arm
   (&optional __arm)
   (if __arm (setq _arm __arm)) _arm)
  (:serialization-length
   ()
   (+
    ;; uint8 _arm
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _arm
       (write-byte _arm s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _arm
     (setq _arm (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass agv_msgs::ArmResponse
  :super ros::object
  :slots (_result ))

(defmethod agv_msgs::ArmResponse
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

(defclass agv_msgs::Arm
  :super ros::object
  :slots ())

(setf (get agv_msgs::Arm :md5sum-) "dd0555f68f747c630a22ca214d8ef45c")
(setf (get agv_msgs::Arm :datatype-) "agv_msgs/Arm")
(setf (get agv_msgs::Arm :request) agv_msgs::ArmRequest)
(setf (get agv_msgs::Arm :response) agv_msgs::ArmResponse)

(defmethod agv_msgs::ArmRequest
  (:response () (instance agv_msgs::ArmResponse :init)))

(setf (get agv_msgs::ArmRequest :md5sum-) "dd0555f68f747c630a22ca214d8ef45c")
(setf (get agv_msgs::ArmRequest :datatype-) "agv_msgs/ArmRequest")
(setf (get agv_msgs::ArmRequest :definition-)
      "#request 第0位:上升 第1位:下降 暂停:00
uint8 arm
---
#response
bool result
")

(setf (get agv_msgs::ArmResponse :md5sum-) "dd0555f68f747c630a22ca214d8ef45c")
(setf (get agv_msgs::ArmResponse :datatype-) "agv_msgs/ArmResponse")
(setf (get agv_msgs::ArmResponse :definition-)
      "#request 第0位:上升 第1位:下降 暂停:00
uint8 arm
---
#response
bool result
")



(provide :agv_msgs/Arm "dd0555f68f747c630a22ca214d8ef45c")


