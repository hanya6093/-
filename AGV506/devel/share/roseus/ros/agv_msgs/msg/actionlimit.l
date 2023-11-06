;; Auto-generated. Do not edit!


(when (boundp 'agv_msgs::actionlimit)
  (if (not (find-package "AGV_MSGS"))
    (make-package "AGV_MSGS"))
  (shadow 'actionlimit (find-package "AGV_MSGS")))
(unless (find-package "AGV_MSGS::ACTIONLIMIT")
  (make-package "AGV_MSGS::ACTIONLIMIT"))

(in-package "ROS")
;;//! \htmlinclude actionlimit.msg.html


(defclass agv_msgs::actionlimit
  :super ros::object
  :slots (_armlimit _fightlimit ))

(defmethod agv_msgs::actionlimit
  (:init
   (&key
    ((:armlimit __armlimit) 0)
    ((:fightlimit __fightlimit) 0)
    )
   (send-super :init)
   (setq _armlimit (round __armlimit))
   (setq _fightlimit (round __fightlimit))
   self)
  (:armlimit
   (&optional __armlimit)
   (if __armlimit (setq _armlimit __armlimit)) _armlimit)
  (:fightlimit
   (&optional __fightlimit)
   (if __fightlimit (setq _fightlimit __fightlimit)) _fightlimit)
  (:serialization-length
   ()
   (+
    ;; uint8 _armlimit
    1
    ;; uint8 _fightlimit
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _armlimit
       (write-byte _armlimit s)
     ;; uint8 _fightlimit
       (write-byte _fightlimit s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _armlimit
     (setq _armlimit (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _fightlimit
     (setq _fightlimit (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get agv_msgs::actionlimit :md5sum-) "d6ed2d9fe059b091ce8972987df0bc2d")
(setf (get agv_msgs::actionlimit :datatype-) "agv_msgs/actionlimit")
(setf (get agv_msgs::actionlimit :definition-)
      "uint8 armlimit # 大臂和限位1 2
uint8 fightlimit  # 推斗和限位3 4
")



(provide :agv_msgs/actionlimit "d6ed2d9fe059b091ce8972987df0bc2d")


