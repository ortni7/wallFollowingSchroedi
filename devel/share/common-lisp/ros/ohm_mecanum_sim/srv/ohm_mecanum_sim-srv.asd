
(cl:in-package :asdf)

(defsystem "ohm_mecanum_sim-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Kill" :depends-on ("_package_Kill"))
    (:file "_package_Kill" :depends-on ("_package"))
    (:file "Spawn" :depends-on ("_package_Spawn"))
    (:file "_package_Spawn" :depends-on ("_package"))
  ))