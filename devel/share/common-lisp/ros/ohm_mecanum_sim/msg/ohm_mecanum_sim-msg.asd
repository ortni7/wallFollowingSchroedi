
(cl:in-package :asdf)

(defsystem "ohm_mecanum_sim-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "WheelSpeed" :depends-on ("_package_WheelSpeed"))
    (:file "_package_WheelSpeed" :depends-on ("_package"))
  ))