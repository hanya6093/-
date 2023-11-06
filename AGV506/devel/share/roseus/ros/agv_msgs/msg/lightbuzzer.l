;; Auto-generated. Do not edit!


(when (boundp 'agv_msgs::lightbuzzer)
  (if (not (find-package "AGV_MSGS"))
    (make-package "AGV_MSGS"))
  (shadow 'lightbuzzer (find-package "AGV_MSGS")))
(unless (find-package "AGV_MSGS::LIGHTBUZZER")
  (make-package "AGV_MSGS::LIGHTBUZZER"))

(in-package "ROS")
;;//! \htmlinclude lightbuzzer.msg.html


(defclass agv_msgs::lightbuzzer
  :super ros::object
  :slots (_light _buzzer ))

(defmethod agv_msgs::lightbuzzer
  (:init
   (&key
    ((:light __light) 0)
    ((:buzzer __buzzer) 0)
    )
   (send-super :init)
   (setq _light (round __light))
   (setq _buzzer (round __buzzer))
   self)
  (:light
   (&optional __light)
   (if __light (setq _light __light)) _light)
  (:buzzer
   (&optional __buzzer)
   (if __buzzer (setq _buzzer __buzzer)) _buzzer)
  (:serialization-length
   ()
   (+
    ;; uint8 _light
    1
    ;; uint8 _buzzer
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _light
       (write-byte _light s)
     ;; uint8 _buzzer
       (write-byte _buzzer s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _light
     (setq _light (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _buzzer
     (setq _buzzer (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get agv_msgs::lightbuzzer :md5sum-) "a462c3b9113a37311f2fdfd366a4203b")
(setf (get agv_msgs::lightbuzzer :datatype-) "agv_msgs/lightbuzzer")
(setf (get agv_msgs::lightbuzzer :definition-)
      "uint8 light # 灯光
uint8 buzzer # 蜂鸣器
")



(provide :agv_msgs/lightbuzzer "a462c3b9113a37311f2fdfd366a4203b")


