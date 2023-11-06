;; Auto-generated. Do not edit!


(when (boundp 'agv_msgs::ultrasonicRadar)
  (if (not (find-package "AGV_MSGS"))
    (make-package "AGV_MSGS"))
  (shadow 'ultrasonicRadar (find-package "AGV_MSGS")))
(unless (find-package "AGV_MSGS::ULTRASONICRADAR")
  (make-package "AGV_MSGS::ULTRASONICRADAR"))

(in-package "ROS")
;;//! \htmlinclude ultrasonicRadar.msg.html


(defclass agv_msgs::ultrasonicRadar
  :super ros::object
  :slots (_radar1 _radar2 ))

(defmethod agv_msgs::ultrasonicRadar
  (:init
   (&key
    ((:radar1 __radar1) 0.0)
    ((:radar2 __radar2) 0.0)
    )
   (send-super :init)
   (setq _radar1 (float __radar1))
   (setq _radar2 (float __radar2))
   self)
  (:radar1
   (&optional __radar1)
   (if __radar1 (setq _radar1 __radar1)) _radar1)
  (:radar2
   (&optional __radar2)
   (if __radar2 (setq _radar2 __radar2)) _radar2)
  (:serialization-length
   ()
   (+
    ;; float32 _radar1
    4
    ;; float32 _radar2
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _radar1
       (sys::poke _radar1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _radar2
       (sys::poke _radar2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _radar1
     (setq _radar1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _radar2
     (setq _radar2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get agv_msgs::ultrasonicRadar :md5sum-) "7b410d2498d0c5dc3043e12d93b45707")
(setf (get agv_msgs::ultrasonicRadar :datatype-) "agv_msgs/ultrasonicRadar")
(setf (get agv_msgs::ultrasonicRadar :definition-)
      "float32 radar1 # 雷达1距离
float32 radar2 # 雷达2距离
")



(provide :agv_msgs/ultrasonicRadar "7b410d2498d0c5dc3043e12d93b45707")


