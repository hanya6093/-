;; Auto-generated. Do not edit!


(when (boundp 'agv_msgs::accelerator)
  (if (not (find-package "AGV_MSGS"))
    (make-package "AGV_MSGS"))
  (shadow 'accelerator (find-package "AGV_MSGS")))
(unless (find-package "AGV_MSGS::ACCELERATOR")
  (make-package "AGV_MSGS::ACCELERATOR"))

(in-package "ROS")
;;//! \htmlinclude accelerator.msg.html


(defclass agv_msgs::accelerator
  :super ros::object
  :slots (_accelerator ))

(defmethod agv_msgs::accelerator
  (:init
   (&key
    ((:accelerator __accelerator) 0)
    )
   (send-super :init)
   (setq _accelerator (round __accelerator))
   self)
  (:accelerator
   (&optional __accelerator)
   (if __accelerator (setq _accelerator __accelerator)) _accelerator)
  (:serialization-length
   ()
   (+
    ;; uint32 _accelerator
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _accelerator
       (write-long _accelerator s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _accelerator
     (setq _accelerator (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get agv_msgs::accelerator :md5sum-) "d267542ebde270d3d9efa2af5f119108")
(setf (get agv_msgs::accelerator :datatype-) "agv_msgs/accelerator")
(setf (get agv_msgs::accelerator :definition-)
      "uint32 accelerator # 油门数据
")



(provide :agv_msgs/accelerator "d267542ebde270d3d9efa2af5f119108")


