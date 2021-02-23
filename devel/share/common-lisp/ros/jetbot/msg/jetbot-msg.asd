
(cl:in-package :asdf)

(defsystem "jetbot-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "keycon" :depends-on ("_package_keycon"))
    (:file "_package_keycon" :depends-on ("_package"))
  ))