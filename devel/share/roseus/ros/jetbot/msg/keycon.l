;; Auto-generated. Do not edit!


(when (boundp 'jetbot::keycon)
  (if (not (find-package "JETBOT"))
    (make-package "JETBOT"))
  (shadow 'keycon (find-package "JETBOT")))
(unless (find-package "JETBOT::KEYCON")
  (make-package "JETBOT::KEYCON"))

(in-package "ROS")
;;//! \htmlinclude keycon.msg.html


(defclass jetbot::keycon
  :super ros::object
  :slots (_ServoX _ServoY _Front _Right _Left ))

(defmethod jetbot::keycon
  (:init
   (&key
    ((:ServoX __ServoX) 0)
    ((:ServoY __ServoY) 0)
    ((:Front __Front) 0)
    ((:Right __Right) 0)
    ((:Left __Left) 0)
    )
   (send-super :init)
   (setq _ServoX (round __ServoX))
   (setq _ServoY (round __ServoY))
   (setq _Front (round __Front))
   (setq _Right (round __Right))
   (setq _Left (round __Left))
   self)
  (:ServoX
   (&optional __ServoX)
   (if __ServoX (setq _ServoX __ServoX)) _ServoX)
  (:ServoY
   (&optional __ServoY)
   (if __ServoY (setq _ServoY __ServoY)) _ServoY)
  (:Front
   (&optional __Front)
   (if __Front (setq _Front __Front)) _Front)
  (:Right
   (&optional __Right)
   (if __Right (setq _Right __Right)) _Right)
  (:Left
   (&optional __Left)
   (if __Left (setq _Left __Left)) _Left)
  (:serialization-length
   ()
   (+
    ;; int32 _ServoX
    4
    ;; int32 _ServoY
    4
    ;; int32 _Front
    4
    ;; int32 _Right
    4
    ;; int32 _Left
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _ServoX
       (write-long _ServoX s)
     ;; int32 _ServoY
       (write-long _ServoY s)
     ;; int32 _Front
       (write-long _Front s)
     ;; int32 _Right
       (write-long _Right s)
     ;; int32 _Left
       (write-long _Left s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _ServoX
     (setq _ServoX (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _ServoY
     (setq _ServoY (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _Front
     (setq _Front (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _Right
     (setq _Right (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _Left
     (setq _Left (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get jetbot::keycon :md5sum-) "21f0631ed4780625ab71b7a02b0921b4")
(setf (get jetbot::keycon :datatype-) "jetbot/keycon")
(setf (get jetbot::keycon :definition-)
      "int32 ServoX
int32 ServoY
int32 Front
int32 Right
int32 Left
")



(provide :jetbot/keycon "21f0631ed4780625ab71b7a02b0921b4")


