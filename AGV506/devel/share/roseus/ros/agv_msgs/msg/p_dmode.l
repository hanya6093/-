;; Auto-generated. Do not edit!


(when (boundp 'agv_msgs::p_dmode)
  (if (not (find-package "AGV_MSGS"))
    (make-package "AGV_MSGS"))
  (shadow 'p_dmode (find-package "AGV_MSGS")))
(unless (find-package "AGV_MSGS::P_DMODE")
  (make-package "AGV_MSGS::P_DMODE"))

(in-package "ROS")
;;//! \htmlinclude p_dmode.msg.html


(defclass agv_msgs::p_dmode
  :super ros::object
  :slots (_mode ))

(defmethod agv_msgs::p_dmode
  (:init
   (&key
    ((:mode __mode) 0)
    )
   (send-super :init)
   (setq _mode (round __mode))
   self)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:serialization-length
   ()
   (+
    ;; uint8 _mode
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _mode
       (write-byte _mode s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _mode
     (setq _mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get agv_msgs::p_dmode :md5sum-) "89b81386720be1cd0ce7a3953fcd1b19")
(setf (get agv_msgs::p_dmode :datatype-) "agv_msgs/p_dmode")
(setf (get agv_msgs::p_dmode :definition-)
      "uint8 mode # 驾驶方式
")



(provide :agv_msgs/p_dmode "89b81386720be1cd0ce7a3953fcd1b19")


