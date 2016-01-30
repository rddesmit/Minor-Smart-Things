
(cl:in-package :asdf)

(defsystem "hello_world-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "HelloWorldService" :depends-on ("_package_HelloWorldService"))
    (:file "_package_HelloWorldService" :depends-on ("_package"))
  ))