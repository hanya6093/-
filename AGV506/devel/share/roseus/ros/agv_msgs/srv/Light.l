;; Auto-generated. Do not edit!


(when (boundp 'agv_msgs::Light)
  (if (not (find-package "AGV_MSGS"))
    (make-package "AGV_MSGS"))
  (shadow 'Light (find-package "AGV_MSGS")))
(unless (find-package "AGV_MSGS::LIGHT")
  (make-package "AGV_MSGS::LIGHT"))
(unless (find-package "AGV_MSGS::LIGHTREQUEST")
  (make-package "AGV_MSGS::LIGHTREQUEST"))
(unless (find-package "AGV_MSGS::LIGHTRESPONSE")
  (make-package "AGV_MSGS::LIGHTRESPONSE"))

(in-package "ROS")





(defclass agv_msgs::LightRequest
  :super ros::object
  :slots (_light ))

(defmethod agv_msgs::LightRequest
  (:init
   (&key
    ((:light __light) nil)
    )
   (send-super :init)
   (setq _light __light)
   self)
  (:light
   (&optional __light)
   (if __light (setq _light __light)) _light)
  (:serialization-length
   ()
   (+
    ;; bool _light
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _light
       (if _light (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _light
     (setq _light (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass agv_msgs::LightResponse
  :super ros::object
  :slots (_result ))

(defmethod agv_msgs::LightResponse
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

(defclass agv_msgs::Light
  :super ros::object
  :slots ())

(setf (get agv_msgs::Light :md5sum-) "199df97571fbe4ca40cb7e26d6991a7a")
(setf (get agv_msgs::Light :datatype-) "agv_msgs/Light")
(setf (get agv_msgs::Light :request) agv_msgs::LightRequest)
(setf (get agv_msgs::Light :response) agv_msgs::LightResponse)

(defmethod agv_msgs::LightRequest
  (:response () (instance agv_msgs::LightResponse :init)))

(setf (get agv_msgs::LightRequest :md5sum-) "199df97571fbe4ca40cb7e26d6991a7a")
(setf (get agv_msgs::LightRequest :datatype-) "agv_msgs/LightRequest")
(setf (get agv_msgs::LightRequest :definition-)
      "#request 
bool light
---
#response
bool result
")

(setf (get agv_msgs::LightResponse :md5sum-) "199df97571fbe4ca40cb7e26d6991a7a")
(setf (get agv_msgs::LightResponse :datatype-) "agv_msgs/LightResponse")
(setf (get agv_msgs::LightResponse :definition-)
      "#request 
bool light
---
#response
bool result
")



(provide :agv_msgs/Light "199df97571fbe4ca40cb7e26d6991a7a")


