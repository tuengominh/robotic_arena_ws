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

class camera {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.detect = null;
      this.id = null;
      this.targx = null;
      this.targy = null;
      this.data = null;
    }
    else {
      if (initObj.hasOwnProperty('detect')) {
        this.detect = initObj.detect
      }
      else {
        this.detect = 0;
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
      if (initObj.hasOwnProperty('data')) {
        this.data = initObj.data
      }
      else {
        this.data = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type camera
    // Serialize message field [detect]
    bufferOffset = _serializer.int8(obj.detect, buffer, bufferOffset);
    // Serialize message field [id]
    bufferOffset = _serializer.uint8(obj.id, buffer, bufferOffset);
    // Serialize message field [targx]
    bufferOffset = _serializer.int16(obj.targx, buffer, bufferOffset);
    // Serialize message field [targy]
    bufferOffset = _serializer.int16(obj.targy, buffer, bufferOffset);
    // Serialize message field [data]
    bufferOffset = _serializer.string(obj.data, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type camera
    let len;
    let data = new camera(null);
    // Deserialize message field [detect]
    data.detect = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [id]
    data.id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [targx]
    data.targx = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [targy]
    data.targy = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [data]
    data.data = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.data);
    return length + 10;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robots_msg/camera';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1b522f111dbe5395cc09d642ba25bfa6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int8 detect  # 1 : detect, 0 : non detect    
    uint8 id  # id of fiducial
    int16 targx  # coordinate x
    int16 targy  # coordinate y
    string data  # all info in string
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new camera(null);
    if (msg.detect !== undefined) {
      resolved.detect = msg.detect;
    }
    else {
      resolved.detect = 0
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

    if (msg.data !== undefined) {
      resolved.data = msg.data;
    }
    else {
      resolved.data = ''
    }

    return resolved;
    }
};

module.exports = camera;
