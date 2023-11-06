;; Auto-generated. Do not edit!


(when (boundp 'agv_msgs::Dmode)
  (if (not (find-package "AGV_MSGS"))
    (make-package "AGV_MSGS"))
  (shadow 'Dmode (find-package "AGV_MSGS")))
(unless (find-package "AGV_MSGS::DMODE")
  (make-package "AGV_MSGS::DMODE"))
(unless (find-package "AGV_MSGS::DMODEREQUEST")
  (make-package "AGV_MSGS::DMODEREQUEST"))
(unless (find-package "AGV_MSGS::DMODERESPONSE")
  (make-package "AGV_MSGS::DMODERESPONSE"))

(in-package "ROS")





(defclass agv_msgs::DmodeRequest
  :super ros::object
  :slots (_mode ))

(defmethod agv_msgs::DmodeRequest
  (:init
   (&key
    ((:mode __mode) nil)
    )
   (send-super :init)
   (setq _mode __mode)
   self)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:serialization-length
   ()
   (+
    ;; bool _mode
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _mode
       (if _mode (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _mode
     (setq _mode (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass agv_msgs::DmodeResponse
  :super ros::object
  :slots (_result ))

(defmethod agv_msgs::DmodeResponse
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

(defclass agv_msgs::Dmode
  :super ros::object
  :slots ())

(setf (get agv_msgs::Dmode :md5sum-) "6252fca798177ba9926f15b28891aedb")
(setf (get agv_msgs::Dmode :datatype-) "agv_msgs/Dmode")
(setf (get agv_msgs::Dmode :request) agv_msgs::DmodeRequest)
(setf (get agv_msgs::Dmode :response) agv_msgs::DmodeResponse)

(defmethod agv_msgs::DmodeRequest
  (:response () (instance agv_msgs::DmodeResponse :init)))

(setf (get agv_msgs::DmodeRequest :md5sum-) "6252fca798177ba9926f15b28891aedb")
(setf (get agv_msgs::DmodeRequest :datatype-) "agv_msgs/DmodeRequest")
(setf (get agv_msgs::DmodeRequest :definition-)
      "#request false:现场控制 true:远端控制
bool mode
---
#response
bool result
")

(setf (get agv_msgs::DmodeResponse :md5sum-) "6252fca798177ba9926f15b28891aedb")
(setf (get agv_msgs::DmodeResponse :datatype-) "agv_msgs/DmodeResponse")
(setf (get agv_msgs::DmodeResponse :definition-)
      "#request false:现场控制 true:远端控制
bool mode
---
#response
bool result
")



(provide :agv_msgs/Dmode "6252fca798177ba9926f15b28891aedb")


