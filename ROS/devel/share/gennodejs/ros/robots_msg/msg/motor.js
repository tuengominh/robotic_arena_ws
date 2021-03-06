// Auto-generated. Do not edit!

// (in-package robots_msg.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class motor {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.speed = null;
      this.dir = null;
      this.pos = null;
    }
    else {
      if (initObj.hasOwnProperty('speed')) {
        this.speed = initObj.speed
      }
      else {
        this.speed = 0;
      }
      if (initObj.hasOwnProperty('dir')) {
        this.dir = initObj.dir
      }
      else {
        this.dir = 0;
      }
      if (initObj.hasOwnProperty('pos')) {
        this.pos = initObj.pos
      }
      else {
        this.pos = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type motor
    // Serialize message field [speed]
    bufferOffset = _serializer.uint8(obj.speed, buffer, bufferOffset);
    // Serialize message field [dir]
    bufferOffset = _serializer.uint8(obj.dir, buffer, bufferOffset);
    // Serialize message field [pos]
    bufferOffset = _serializer.int16(obj.pos, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type motor
    let len;
    let data = new motor(null);
    // Deserialize message field [speed]
    data.speed = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [dir]
    data.dir = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [pos]
    data.pos = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robots_msg/motor';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2fa8cbcf1466cb2e33624b31d90f1f01';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 speed  # 0..255 for ecology20 and 0..180 for tanke20
    uint8 dir  # 0 : stop, 1 : CW, 2 : CCW
    int16 pos  # position 
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new motor(null);
    if (msg.speed !== undefined) {
      resolved.speed = msg.speed;
    }
    else {
      resolved.speed = 0
    }

    if (msg.dir !== undefined) {
      resolved.dir = msg.dir;
    }
    else {
      resolved.dir = 0
    }

    if (msg.pos !== undefined) {
      resolved.pos = msg.pos;
    }
    else {
      resolved.pos = 0
    }

    return resolved;
    }
};

module.exports = motor;
