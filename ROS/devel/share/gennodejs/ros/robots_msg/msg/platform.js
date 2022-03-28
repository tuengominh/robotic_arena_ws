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

class platform {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.action = null;
      this.up = null;
      this.down = null;
    }
    else {
      if (initObj.hasOwnProperty('action')) {
        this.action = initObj.action
      }
      else {
        this.action = '';
      }
      if (initObj.hasOwnProperty('up')) {
        this.up = initObj.up
      }
      else {
        this.up = false;
      }
      if (initObj.hasOwnProperty('down')) {
        this.down = initObj.down
      }
      else {
        this.down = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type platform
    // Serialize message field [action]
    bufferOffset = _serializer.string(obj.action, buffer, bufferOffset);
    // Serialize message field [up]
    bufferOffset = _serializer.bool(obj.up, buffer, bufferOffset);
    // Serialize message field [down]
    bufferOffset = _serializer.bool(obj.down, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type platform
    let len;
    let data = new platform(null);
    // Deserialize message field [action]
    data.action = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [up]
    data.up = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [down]
    data.down = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.action);
    return length + 6;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robots_msg/platform';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '44b302fafd3aca89b85306b91c254349';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string action # the actions are 'MOVING_UP', 'MOVING_DOWN', 'STOP'
    bool up #  True when is up
    bool down # True when is down 
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new platform(null);
    if (msg.action !== undefined) {
      resolved.action = msg.action;
    }
    else {
      resolved.action = ''
    }

    if (msg.up !== undefined) {
      resolved.up = msg.up;
    }
    else {
      resolved.up = false
    }

    if (msg.down !== undefined) {
      resolved.down = msg.down;
    }
    else {
      resolved.down = false
    }

    return resolved;
    }
};

module.exports = platform;
