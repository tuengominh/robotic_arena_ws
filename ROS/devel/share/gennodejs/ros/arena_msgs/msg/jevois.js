// Auto-generated. Do not edit!

// (in-package arena_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class jevois {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.type = null;
      this.id = null;
      this.targx = null;
      this.targy = null;
      this.targw = null;
      this.targh = null;
    }
    else {
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = '';
      }
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('targx')) {
        this.targx = initObj.targx
      }
      else {
        this.targx = 0;
      }
      if (initObj.hasOwnProperty('targy')) {
        this.targy = initObj.targy
      }
      else {
        this.targy = 0;
      }
      if (initObj.hasOwnProperty('targw')) {
        this.targw = initObj.targw
      }
      else {
        this.targw = 0;
      }
      if (initObj.hasOwnProperty('targh')) {
        this.targh = initObj.targh
      }
      else {
        this.targh = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type jevois
    // Serialize message field [type]
    bufferOffset = _serializer.string(obj.type, buffer, bufferOffset);
    // Serialize message field [id]
    bufferOffset = _serializer.uint8(obj.id, buffer, bufferOffset);
    // Serialize message field [targx]
    bufferOffset = _serializer.int16(obj.targx, buffer, bufferOffset);
    // Serialize message field [targy]
    bufferOffset = _serializer.int16(obj.targy, buffer, bufferOffset);
    // Serialize message field [targw]
    bufferOffset = _serializer.int16(obj.targw, buffer, bufferOffset);
    // Serialize message field [targh]
    bufferOffset = _serializer.int16(obj.targh, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type jevois
    let len;
    let data = new jevois(null);
    // Deserialize message field [type]
    data.type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [id]
    data.id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [targx]
    data.targx = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [targy]
    data.targy = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [targw]
    data.targw = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [targh]
    data.targh = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.type);
    return length + 13;
  }

  static datatype() {
    // Returns string type for a message object
    return 'arena_msgs/jevois';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2e3dfb3b0880c65b6e878e5b7b7188e0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string type
    uint8 id
    int16 targx #coordinate x
    int16 targy #coordinate y
    int16 targw # weight of fiducial
    int16 targh # hight of fiducial
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new jevois(null);
    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = ''
    }

    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.targx !== undefined) {
      resolved.targx = msg.targx;
    }
    else {
      resolved.targx = 0
    }

    if (msg.targy !== undefined) {
      resolved.targy = msg.targy;
    }
    else {
      resolved.targy = 0
    }

    if (msg.targw !== undefined) {
      resolved.targw = msg.targw;
    }
    else {
      resolved.targw = 0
    }

    if (msg.targh !== undefined) {
      resolved.targh = msg.targh;
    }
    else {
      resolved.targh = 0
    }

    return resolved;
    }
};

module.exports = jevois;
