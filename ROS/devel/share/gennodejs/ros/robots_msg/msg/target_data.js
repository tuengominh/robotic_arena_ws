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

class target_data {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.range_l = null;
      this.range_c = null;
      this.range_r = null;
      this.n_food = null;
      this.n_water = null;
      this.targ_id = null;
      this.targ_type = null;
      this.targ_dist = null;
      this.targ_x = null;
    }
    else {
      if (initObj.hasOwnProperty('range_l')) {
        this.range_l = initObj.range_l
      }
      else {
        this.range_l = 0;
      }
      if (initObj.hasOwnProperty('range_c')) {
        this.range_c = initObj.range_c
      }
      else {
        this.range_c = 0;
      }
      if (initObj.hasOwnProperty('range_r')) {
        this.range_r = initObj.range_r
      }
      else {
        this.range_r = 0;
      }
      if (initObj.hasOwnProperty('n_food')) {
        this.n_food = initObj.n_food
      }
      else {
        this.n_food = 0;
      }
      if (initObj.hasOwnProperty('n_water')) {
        this.n_water = initObj.n_water
      }
      else {
        this.n_water = 0;
      }
      if (initObj.hasOwnProperty('targ_id')) {
        this.targ_id = initObj.targ_id
      }
      else {
        this.targ_id = '';
      }
      if (initObj.hasOwnProperty('targ_type')) {
        this.targ_type = initObj.targ_type
      }
      else {
        this.targ_type = '';
      }
      if (initObj.hasOwnProperty('targ_dist')) {
        this.targ_dist = initObj.targ_dist
      }
      else {
        this.targ_dist = 0.0;
      }
      if (initObj.hasOwnProperty('targ_x')) {
        this.targ_x = initObj.targ_x
      }
      else {
        this.targ_x = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type target_data
    // Serialize message field [range_l]
    bufferOffset = _serializer.uint16(obj.range_l, buffer, bufferOffset);
    // Serialize message field [range_c]
    bufferOffset = _serializer.uint16(obj.range_c, buffer, bufferOffset);
    // Serialize message field [range_r]
    bufferOffset = _serializer.uint16(obj.range_r, buffer, bufferOffset);
    // Serialize message field [n_food]
    bufferOffset = _serializer.uint16(obj.n_food, buffer, bufferOffset);
    // Serialize message field [n_water]
    bufferOffset = _serializer.uint16(obj.n_water, buffer, bufferOffset);
    // Serialize message field [targ_id]
    bufferOffset = _serializer.string(obj.targ_id, buffer, bufferOffset);
    // Serialize message field [targ_type]
    bufferOffset = _serializer.string(obj.targ_type, buffer, bufferOffset);
    // Serialize message field [targ_dist]
    bufferOffset = _serializer.float32(obj.targ_dist, buffer, bufferOffset);
    // Serialize message field [targ_x]
    bufferOffset = _serializer.float32(obj.targ_x, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type target_data
    let len;
    let data = new target_data(null);
    // Deserialize message field [range_l]
    data.range_l = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [range_c]
    data.range_c = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [range_r]
    data.range_r = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [n_food]
    data.n_food = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [n_water]
    data.n_water = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [targ_id]
    data.targ_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [targ_type]
    data.targ_type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [targ_dist]
    data.targ_dist = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [targ_x]
    data.targ_x = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.targ_id);
    length += _getByteLength(object.targ_type);
    return length + 26;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robots_msg/target_data';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a34b54ff877258b4705ff283256911e9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint16 range_l  # left ir sensor
    uint16 range_c  # laser sensor
    uint16 range_r  # right ir sensor 
    uint16 n_food
    uint16 n_water
    string targ_id
    string targ_type
    float32 targ_dist
    float32 targ_x
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new target_data(null);
    if (msg.range_l !== undefined) {
      resolved.range_l = msg.range_l;
    }
    else {
      resolved.range_l = 0
    }

    if (msg.range_c !== undefined) {
      resolved.range_c = msg.range_c;
    }
    else {
      resolved.range_c = 0
    }

    if (msg.range_r !== undefined) {
      resolved.range_r = msg.range_r;
    }
    else {
      resolved.range_r = 0
    }

    if (msg.n_food !== undefined) {
      resolved.n_food = msg.n_food;
    }
    else {
      resolved.n_food = 0
    }

    if (msg.n_water !== undefined) {
      resolved.n_water = msg.n_water;
    }
    else {
      resolved.n_water = 0
    }

    if (msg.targ_id !== undefined) {
      resolved.targ_id = msg.targ_id;
    }
    else {
      resolved.targ_id = ''
    }

    if (msg.targ_type !== undefined) {
      resolved.targ_type = msg.targ_type;
    }
    else {
      resolved.targ_type = ''
    }

    if (msg.targ_dist !== undefined) {
      resolved.targ_dist = msg.targ_dist;
    }
    else {
      resolved.targ_dist = 0.0
    }

    if (msg.targ_x !== undefined) {
      resolved.targ_x = msg.targ_x;
    }
    else {
      resolved.targ_x = 0.0
    }

    return resolved;
    }
};

module.exports = target_data;
