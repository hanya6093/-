;; Auto-generated. Do not edit!


(when (boundp 'agv_msgs::gearbrake)
  (if (not (find-package "AGV_MSGS"))
    (make-package "AGV_MSGS"))
  (shadow 'gearbrake (find-package "AGV_MSGS")))
(unless (find-package "AGV_MSGS::GEARBRAKE")
  (make-package "AGV_MSGS::GEARBRAKE"))

(in-package "ROS")
;;//! \htmlinclude gearbrake.msg.html


(defclass agv_msgs::gearbrake
  :super ros::object
  :slots (_gear _brake _accelerator ))

(defmethod agv_msgs::gearbrake
  (:init
   (&key
    ((:gear __gear) 0)
    ((:brake __brake) 0)
    ((:accelerator __accelerator) 0)
    )
   (send-super :init)
   (setq _gear (round __gear))
   (setq _brake (round __brake))
   (setq _accelerator (round __accelerator))
   self)
  (:gear
   (&optional __gear)
   (if __gear (setq _gear __gear)) _gear)
  (:brake
   (&optional __brake)
   (if __brake (setq _brake __brake)) _brake)
  (:accelerator
   (&optional __accelerator)
   (if __accelerator (setq _accelerator __accelerator)) _accelerator)
  (:serialization-length
   ()
   (+
    ;; uint8 _gear
    1
    ;; uint8 _brake
    1
    ;; uint32 _accelerator
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _gear
       (write-byte _gear s)
     ;; uint8 _brake
       (write-byte _brake s)
     ;; uint32 _accelerator
       (write-long _accelerator s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _gear
     (setq _gear (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _brake
     (setq _brake (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint32 _accelerator
     (setq _accelerator (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get agv_msgs::gearbrake :md5sum-) "010d6ca71c6e537a0de387e33a7506ee")
(setf (get agv_msgs::gearbrake :datatype-) "agv_msgs/gearbrake")
(setf (get agv_msgs::gearbrake :definition-)
      "uint8 gear # 档位
uint8 brake # 刹车
uint32 accelerator # 油门
")



(provide :agv_msgs/gearbrake "010d6ca71c6e537a0de387e33a7506ee")


