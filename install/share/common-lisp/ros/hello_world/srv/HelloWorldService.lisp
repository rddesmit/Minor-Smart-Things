; Auto-generated. Do not edit!


(cl:in-package hello_world-srv)


;//! \htmlinclude HelloWorldService-request.msg.html

(cl:defclass <HelloWorldService-request> (roslisp-msg-protocol:ros-message)
  ((hello
    :reader hello
    :initarg :hello
    :type cl:string
    :initform ""))
)

(cl:defclass HelloWorldService-request (<HelloWorldService-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HelloWorldService-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HelloWorldService-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hello_world-srv:<HelloWorldService-request> is deprecated: use hello_world-srv:HelloWorldService-request instead.")))

(cl:ensure-generic-function 'hello-val :lambda-list '(m))
(cl:defmethod hello-val ((m <HelloWorldService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hello_world-srv:hello-val is deprecated.  Use hello_world-srv:hello instead.")
  (hello m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HelloWorldService-request>) ostream)
  "Serializes a message object of type '<HelloWorldService-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'hello))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'hello))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HelloWorldService-request>) istream)
  "Deserializes a message object of type '<HelloWorldService-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'hello) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'hello) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HelloWorldService-request>)))
  "Returns string type for a service object of type '<HelloWorldService-request>"
  "hello_world/HelloWorldServiceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HelloWorldService-request)))
  "Returns string type for a service object of type 'HelloWorldService-request"
  "hello_world/HelloWorldServiceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HelloWorldService-request>)))
  "Returns md5sum for a message object of type '<HelloWorldService-request>"
  "48dff27f3c07dd8bff817d8eb36e2278")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HelloWorldService-request)))
  "Returns md5sum for a message object of type 'HelloWorldService-request"
  "48dff27f3c07dd8bff817d8eb36e2278")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HelloWorldService-request>)))
  "Returns full string definition for message of type '<HelloWorldService-request>"
  (cl:format cl:nil "string hello~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HelloWorldService-request)))
  "Returns full string definition for message of type 'HelloWorldService-request"
  (cl:format cl:nil "string hello~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HelloWorldService-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'hello))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HelloWorldService-request>))
  "Converts a ROS message object to a list"
  (cl:list 'HelloWorldService-request
    (cl:cons ':hello (hello msg))
))
;//! \htmlinclude HelloWorldService-response.msg.html

(cl:defclass <HelloWorldService-response> (roslisp-msg-protocol:ros-message)
  ((world
    :reader world
    :initarg :world
    :type cl:string
    :initform ""))
)

(cl:defclass HelloWorldService-response (<HelloWorldService-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HelloWorldService-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HelloWorldService-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hello_world-srv:<HelloWorldService-response> is deprecated: use hello_world-srv:HelloWorldService-response instead.")))

(cl:ensure-generic-function 'world-val :lambda-list '(m))
(cl:defmethod world-val ((m <HelloWorldService-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hello_world-srv:world-val is deprecated.  Use hello_world-srv:world instead.")
  (world m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HelloWorldService-response>) ostream)
  "Serializes a message object of type '<HelloWorldService-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'world))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'world))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HelloWorldService-response>) istream)
  "Deserializes a message object of type '<HelloWorldService-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HelloWorldService-response>)))
  "Returns string type for a service object of type '<HelloWorldService-response>"
  "hello_world/HelloWorldServiceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HelloWorldService-response)))
  "Returns string type for a service object of type 'HelloWorldService-response"
  "hello_world/HelloWorldServiceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HelloWorldService-response>)))
  "Returns md5sum for a message object of type '<HelloWorldService-response>"
  "48dff27f3c07dd8bff817d8eb36e2278")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HelloWorldService-response)))
  "Returns md5sum for a message object of type 'HelloWorldService-response"
  "48dff27f3c07dd8bff817d8eb36e2278")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HelloWorldService-response>)))
  "Returns full string definition for message of type '<HelloWorldService-response>"
  (cl:format cl:nil "string world~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HelloWorldService-response)))
  "Returns full string definition for message of type 'HelloWorldService-response"
  (cl:format cl:nil "string world~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HelloWorldService-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'world))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HelloWorldService-response>))
  "Converts a ROS message object to a list"
  (cl:list 'HelloWorldService-response
    (cl:cons ':world (world msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'HelloWorldService)))
  'HelloWorldService-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'HelloWorldService)))
  'HelloWorldService-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HelloWorldService)))
  "Returns string type for a service object of type '<HelloWorldService>"
  "hello_world/HelloWorldService")