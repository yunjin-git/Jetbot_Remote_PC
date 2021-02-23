// Auto-generated. Do not edit!

// (in-package jetbot.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class keycon {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ServoX = null;
      this.ServoY = null;
      this.Front = null;
      this.Right = null;
      this.Left = null;
    }
    else {
      if (initObj.hasOwnProperty('ServoX')) {
        this.ServoX = initObj.ServoX
      }
      else {
        this.ServoX = 0;
      }
      if (initObj.hasOwnProperty('ServoY')) {
        this.ServoY = initObj.ServoY
      }
      else {
        this.ServoY = 0;
      }
      if (initObj.hasOwnProperty('Front')) {
        this.Front = initObj.Front
      }
      else {
        this.Front = 0;
      }
      if (initObj.hasOwnProperty('Right')) {
        this.Right = initObj.Right
      }
      else {
        this.Right = 0;
      }
      if (initObj.hasOwnProperty('Left')) {
        this.Left = initObj.Left
      }
      else {
        this.Left = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type keycon
    // Serialize message field [ServoX]
    bufferOffset = _serializer.int32(obj.ServoX, buffer, bufferOffset);
    // Serialize message field [ServoY]
    bufferOffset = _serializer.int32(obj.ServoY, buffer, bufferOffset);
    // Serialize message field [Front]
    bufferOffset = _serializer.int32(obj.Front, buffer, bufferOffset);
    // Serialize message field [Right]
    bufferOffset = _serializer.int32(obj.Right, buffer, bufferOffset);
    // Serialize message field [Left]
    bufferOffset = _serializer.int32(obj.Left, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type keycon
    let len;
    let data = new keycon(null);
    // Deserialize message field [ServoX]
    data.ServoX = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [ServoY]
    data.ServoY = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [Front]
    data.Front = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [Right]
    data.Right = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [Left]
    data.Left = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'jetbot/keycon';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '21f0631ed4780625ab71b7a02b0921b4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 ServoX
    int32 ServoY
    int32 Front
    int32 Right
    int32 Left
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new keycon(null);
    if (msg.ServoX !== undefined) {
      resolved.ServoX = msg.ServoX;
    }
    else {
      resolved.ServoX = 0
    }

    if (msg.ServoY !== undefined) {
      resolved.ServoY = msg.ServoY;
    }
    else {
      resolved.ServoY = 0
    }

    if (msg.Front !== undefined) {
      resolved.Front = msg.Front;
    }
    else {
      resolved.Front = 0
    }

    if (msg.Right !== undefined) {
      resolved.Right = msg.Right;
    }
    else {
      resolved.Right = 0
    }

    if (msg.Left !== undefined) {
      resolved.Left = msg.Left;
    }
    else {
      resolved.Left = 0
    }

    return resolved;
    }
};

module.exports = keycon;
