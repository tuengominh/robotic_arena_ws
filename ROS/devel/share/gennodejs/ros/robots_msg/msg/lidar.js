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

class lidar {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.position = null;
      this.range = null;
    }
    else {
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = 0;
      }
      if (initObj.hasOwnProperty('range')) {
        this.range = initObj.range
      }
      else {
        this.range = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type lidar
    // Serialize message field [position]
    bufferOffset = _serializer.int16(obj.position, buffer, bufferOffset);
    // Serialize message field [range]
    bufferOffset = _serializer.int16(obj.range, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type lidar
    let len;
    let data = new lidar(null);
    // Deserialize message field [position]
    data.position = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [range]
    data.range = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robots_msg/lidar';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5060fc4ab83a253ef9abef852a44d0ad';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int16 position
    int16 range
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new lidar(null);
    if (msg.position !== undefined) {
      resolved.position = msg.position;
    }
    else {
      resolved.position = 0
    }

    if (msg.range !== undefined) {
      resolved.range = msg.range;
    }
    else {
      resolved.range = 0
    }

    return resolved;
    }
};

module.exports = lidar;
