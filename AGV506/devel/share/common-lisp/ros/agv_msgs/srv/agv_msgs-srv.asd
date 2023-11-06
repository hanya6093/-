
(cl:in-package :asdf)

(defsystem "agv_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Arm" :depends-on ("_package_Arm"))
    (:file "_package_Arm" :depends-on ("_package"))
    (:file "Brake" :depends-on ("_package_Brake"))
    (:file "_package_Brake" :depends-on ("_package"))
    (:file "Dmode" :depends-on ("_package_Dmode"))
    (:file "_package_Dmode" :depends-on ("_package"))
    (:file "Fight" :depends-on ("_package_Fight"))
    (:file "_package_Fight" :depends-on ("_package"))
    (:file "Gear" :depends-on ("_package_Gear"))
    (:file "_package_Gear" :depends-on ("_package"))
    (:file "Light" :depends-on ("_package_Light"))
    (:file "_package_Light" :depends-on ("_package"))
  ))