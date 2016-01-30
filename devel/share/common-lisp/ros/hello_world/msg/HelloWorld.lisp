; Auto-generated. Do not edit!


(cl:in-package hello_world-msg)


;//! \htmlinclude HelloWorld.msg.html

(cl:defclass <HelloWorld> (roslisp-msg-protocol:ros-message)
  ((hello
    :reader hello
    :initarg :hello
    :type cl:string
    :initform "")
   (world
    :reader world
    :initarg :world
    :type cl:string
    :initform ""))
)

(cl:defclass HelloWorld (<HelloWorld>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HelloWorld>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HelloWorld)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hello_world-msg:<HelloWorld> is deprecated: use hello_world-msg:HelloWorld instead.")))

(cl:ensure-generic-function 'hello-val :lambda-list '(m))
(cl:defmethod hello-val ((m <HelloWorld>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hello_world-msg:hello-val is deprecated.  Use hello_world-msg:hello instead.")
  (hello m))

(cl:ensure-generic-function 'world-val :lambda-list '(m))
(cl:defmethod world-val ((m <HelloWorld>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hello_world-msg:world-val is deprecated.  Use hello_world-msg:world instead.")
  (world m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HelloWorld>) ostream)
  "Serializes a message object of type '<HelloWorld>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'hello))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'hello))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'world))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'world))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HelloWorld>) istream)
  "Deserializes a message object of type '<HelloWorld>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'hello) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'hello) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'world) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'world) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HelloWorld>)))
  "Returns string type for a message object of type '<HelloWorld>"
  "hello_world/HelloWorld")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HelloWorld)))
  "Returns string type for a message object of type 'HelloWorld"
  "hello_world/HelloWorld")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HelloWorld>)))
  "Returns md5sum for a message object of type '<HelloWorld>"
  "bdd98ecc2261ce88f1eb6afa0922e5b9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HelloWorld)))
  "Returns md5sum for a message object of type 'HelloWorld"
  "bdd98ecc2261ce88f1eb6afa0922e5b9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HelloWorld>)))
  "Returns full string definition for message of type '<HelloWorld>"
  (cl:format cl:nil "string hello~%string world~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HelloWorld)))
  "Returns full string definition for message of type 'HelloWorld"
  (cl:format cl:nil "string hello~%string world~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HelloWorld>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'hello))
     4 (cl:length (cl:slot-value msg 'world))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HelloWorld>))
  "Converts a ROS message object to a list"
  (cl:list 'HelloWorld
    (cl:cons ':hello (hello msg))
    (cl:cons ':world (world msg))
))
