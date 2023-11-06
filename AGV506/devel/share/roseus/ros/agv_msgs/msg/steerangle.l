;; Auto-generated. Do not edit!


(when (boundp 'agv_msgs::steerangle)
  (if (not (find-package "AGV_MSGS"))
    (make-package "AGV_MSGS"))
  (shadow 'steerangle (find-package "AGV_MSGS")))
(unless (find-package "AGV_MSGS::STEERANGLE")
  (make-package "AGV_MSGS::STEERANGLE"))

(in-package "ROS")
;;//! \htmlinclude steerangle.msg.html


(defclass agv_msgs::steerangle
  :super ros::object
  :slots (_angle ))

(defmethod agv_msgs::steerangle
  (:init
   (&key
    ((:angle __angle) 0)
    )
   (send-super :init)
   (setq _angle (round __angle))
   self)
  (:angle
   (&optional __angle)
   (if __angle (setq _angle __angle)) _angle)
  (:serialization-length
   ()
   (+
    ;; int32 _angle
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _angle
       (write-long _angle s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _angle
     (setq _angle (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get agv_msgs::steerangle :md5sum-) "de62f7ef8463d5c42dacb6932cbd1470")
(setf (get agv_msgs::steerangle :datatype-) "agv_msgs/steerangle")
(setf (get agv_msgs::steerangle :definition-)
      "int32 angle # 角度
")



(provide :agv_msgs/steerangle "de62f7ef8463d5c42dacb6932cbd1470")


