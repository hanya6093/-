;; Auto-generated. Do not edit!


(when (boundp 'agv_msgs::Fight)
  (if (not (find-package "AGV_MSGS"))
    (make-package "AGV_MSGS"))
  (shadow 'Fight (find-package "AGV_MSGS")))
(unless (find-package "AGV_MSGS::FIGHT")
  (make-package "AGV_MSGS::FIGHT"))
(unless (find-package "AGV_MSGS::FIGHTREQUEST")
  (make-package "AGV_MSGS::FIGHTREQUEST"))
(unless (find-package "AGV_MSGS::FIGHTRESPONSE")
  (make-package "AGV_MSGS::FIGHTRESPONSE"))

(in-package "ROS")





(defclass agv_msgs::FightRequest
  :super ros::object
  :slots (_fight ))

(defmethod agv_msgs::FightRequest
  (:init
   (&key
    ((:fight __fight) 0)
    )
   (send-super :init)
   (setq _fight (round __fight))
   self)
  (:fight
   (&optional __fight)
   (if __fight (setq _fight __fight)) _fight)
  (:serialization-length
   ()
   (+
    ;; uint8 _fight
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _fight
       (write-byte _fight s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _fight
     (setq _fight (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass agv_msgs::FightResponse
  :super ros::object
  :slots (_result ))

(defmethod agv_msgs::FightResponse
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

(defclass agv_msgs::Fight
  :super ros::object
  :slots ())

(setf (get agv_msgs::Fight :md5sum-) "09fc0f92efe2d6e4a553d7301c89ea7d")
(setf (get agv_msgs::Fight :datatype-) "agv_msgs/Fight")
(setf (get agv_msgs::Fight :request) agv_msgs::FightRequest)
(setf (get agv_msgs::Fight :response) agv_msgs::FightResponse)

(defmethod agv_msgs::FightRequest
  (:response () (instance agv_msgs::FightResponse :init)))

(setf (get agv_msgs::FightRequest :md5sum-) "09fc0f92efe2d6e4a553d7301c89ea7d")
(setf (get agv_msgs::FightRequest :datatype-) "agv_msgs/FightRequest")
(setf (get agv_msgs::FightRequest :definition-)
      "#request 第0位:上升 第1位:下降 暂停:00
uint8 fight
---
#response
bool result
")

(setf (get agv_msgs::FightResponse :md5sum-) "09fc0f92efe2d6e4a553d7301c89ea7d")
(setf (get agv_msgs::FightResponse :datatype-) "agv_msgs/FightResponse")
(setf (get agv_msgs::FightResponse :definition-)
      "#request 第0位:上升 第1位:下降 暂停:00
uint8 fight
---
#response
bool result
")



(provide :agv_msgs/Fight "09fc0f92efe2d6e4a553d7301c89ea7d")


