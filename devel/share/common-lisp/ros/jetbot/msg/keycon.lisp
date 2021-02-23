; Auto-generated. Do not edit!


(cl:in-package jetbot-msg)


;//! \htmlinclude keycon.msg.html

(cl:defclass <keycon> (roslisp-msg-protocol:ros-message)
  ((ServoX
    :reader ServoX
    :initarg :ServoX
    :type cl:integer
    :initform 0)
   (ServoY
    :reader ServoY
    :initarg :ServoY
    :type cl:integer
    :initform 0)
   (Front
    :reader Front
    :initarg :Front
    :type cl:integer
    :initform 0)
   (Right
    :reader Right
    :initarg :Right
    :type cl:integer
    :initform 0)
   (Left
    :reader Left
    :initarg :Left
    :type cl:integer
    :initform 0))
)

(cl:defclass keycon (<keycon>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <keycon>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'keycon)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jetbot-msg:<keycon> is deprecated: use jetbot-msg:keycon instead.")))

(cl:ensure-generic-function 'ServoX-val :lambda-list '(m))
(cl:defmethod ServoX-val ((m <keycon>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jetbot-msg:ServoX-val is deprecated.  Use jetbot-msg:ServoX instead.")
  (ServoX m))

(cl:ensure-generic-function 'ServoY-val :lambda-list '(m))
(cl:defmethod ServoY-val ((m <keycon>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jetbot-msg:ServoY-val is deprecated.  Use jetbot-msg:ServoY instead.")
  (ServoY m))

(cl:ensure-generic-function 'Front-val :lambda-list '(m))
(cl:defmethod Front-val ((m <keycon>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jetbot-msg:Front-val is deprecated.  Use jetbot-msg:Front instead.")
  (Front m))

(cl:ensure-generic-function 'Right-val :lambda-list '(m))
(cl:defmethod Right-val ((m <keycon>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jetbot-msg:Right-val is deprecated.  Use jetbot-msg:Right instead.")
  (Right m))

(cl:ensure-generic-function 'Left-val :lambda-list '(m))
(cl:defmethod Left-val ((m <keycon>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jetbot-msg:Left-val is deprecated.  Use jetbot-msg:Left instead.")
  (Left m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <keycon>) ostream)
  "Serializes a message object of type '<keycon>"
  (cl:let* ((signed (cl:slot-value msg 'ServoX)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'ServoY)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'Front)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'Right)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'Left)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <keycon>) istream)
  "Deserializes a message object of type '<keycon>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ServoX) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ServoY) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Front) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Right) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Left) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<keycon>)))
  "Returns string type for a message object of type '<keycon>"
  "jetbot/keycon")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'keycon)))
  "Returns string type for a message object of type 'keycon"
  "jetbot/keycon")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<keycon>)))
  "Returns md5sum for a message object of type '<keycon>"
  "21f0631ed4780625ab71b7a02b0921b4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'keycon)))
  "Returns md5sum for a message object of type 'keycon"
  "21f0631ed4780625ab71b7a02b0921b4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<keycon>)))
  "Returns full string definition for message of type '<keycon>"
  (cl:format cl:nil "int32 ServoX~%int32 ServoY~%int32 Front~%int32 Right~%int32 Left~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'keycon)))
  "Returns full string definition for message of type 'keycon"
  (cl:format cl:nil "int32 ServoX~%int32 ServoY~%int32 Front~%int32 Right~%int32 Left~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <keycon>))
  (cl:+ 0
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <keycon>))
  "Converts a ROS message object to a list"
  (cl:list 'keycon
    (cl:cons ':ServoX (ServoX msg))
    (cl:cons ':ServoY (ServoY msg))
    (cl:cons ':Front (Front msg))
    (cl:cons ':Right (Right msg))
    (cl:cons ':Left (Left msg))
))
