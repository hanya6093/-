;; Auto-generated. Do not edit!


(when (boundp 'agv_msgs::Brake)
  (if (not (find-package "AGV_MSGS"))
    (make-package "AGV_MSGS"))
  (shadow 'Brake (find-package "AGV_MSGS")))
(unless (find-package "AGV_MSGS::BRAKE")
  (make-package "AGV_MSGS::BRAKE"))
(unless (find-package "AGV_MSGS::BRAKEREQUEST")
  (make-package "AGV_MSGS::BRAKEREQUEST"))
(unless (find-package "AGV_MSGS::BRAKERESPONSE")
  (make-package "AGV_MSGS::BRAKERESPONSE"))

(in-package "ROS")





(defclass agv_msgs::BrakeRequest
  :super ros::object
  :slots (_brake ))

(defmethod agv_msgs::BrakeRequest
  (:init
   (&key
    ((:brake __brake) nil)
    )
   (send-super :init)
   (setq _brake __brake)
   self)
  (:brake
   (&optional __brake)
   (if __brake (setq _brake __brake)) _brake)
  (:serialization-length
   ()
   (+
    ;; bool _brake
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _brake
       (if _brake (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _brake
     (setq _brake (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass agv_msgs::BrakeResponse
  :super ros::object
  :slots (_result ))

(defmethod agv_msgs::BrakeResponse
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

(defclass agv_msgs::Brake
  :super ros::object
  :slots ())

(setf (get agv_msgs::Brake :md5sum-) "5b2ec44871413f31c81df6689e271df1")
(setf (get agv_msgs::Brake :datatype-) "agv_msgs/Brake")
(setf (get agv_msgs::Brake :request) agv_msgs::BrakeRequest)
(setf (get agv_msgs::Brake :response) agv_msgs::BrakeResponse)

(defmethod agv_msgs::BrakeRequest
  (:response () (instance agv_msgs::BrakeResponse :init)))

(setf (get agv_msgs::BrakeRequest :md5sum-) "5b2ec44871413f31c81df6689e271df1")
(setf (get agv_msgs::BrakeRequest :datatype-) "agv_msgs/BrakeRequest")
(setf (get agv_msgs::BrakeRequest :definition-)
      "#request 
bool brake
---
#response
bool result
")

(setf (get agv_msgs::BrakeResponse :md5sum-) "5b2ec44871413f31c81df6689e271df1")
(setf (get agv_msgs::BrakeResponse :datatype-) "agv_msgs/BrakeResponse")
(setf (get agv_msgs::BrakeResponse :definition-)
      "#request 
bool brake
---
#response
bool result
")



(provide :agv_msgs/Brake "5b2ec44871413f31c81df6689e271df1")


