
(cl:in-package :asdf)

(defsystem "hello_world-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "HelloWorld" :depends-on ("_package_HelloWorld"))
    (:file "_package_HelloWorld" :depends-on ("_package"))
  ))