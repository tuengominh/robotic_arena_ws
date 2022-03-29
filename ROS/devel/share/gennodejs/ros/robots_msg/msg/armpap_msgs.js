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

class armpap_msgs {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.type = null;
      this.ip = null;
      this.port = null;
      this.id = null;
      this.inst_before = null;
      this.base_speed = null;
      this.base_target = null;
      this.base_current = null;
      this.left_speed = null;
      this.left_target = null;
      this.left_current = null;
      this.right_speed = null;
      this.right_target = null;
      this.right_current = null;
      this.color = null;
      this.gripper = null;
      this.status = null;
    }
    else {
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = '';
      }
      if (initObj.hasOwnProperty('ip')) {
        this.ip = initObj.ip
      }
      else {
        this.ip = '';
      }
      if (initObj.hasOwnProperty('port')) {
        this.port = initObj.port
      }
      else {
        this.port = 0;
      }
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('inst_before')) {
        this.inst_before = initObj.inst_before
      }
      else {
        this.inst_before = 0;
      }
      if (initObj.hasOwnProperty('base_speed')) {
        this.base_speed = initObj.base_speed
      }
      else {
        this.base_speed = 0;
      }
      if (initObj.hasOwnProperty('base_target')) {
        this.base_target = initObj.base_target
      }
      else {
        this.base_target = 0;
      }
      if (initObj.hasOwnProperty('base_current')) {
        this.base_current = initObj.base_current
      }
      else {
        this.base_current = 0;
      }
      if (initObj.hasOwnProperty('left_speed')) {
        this.left_speed = initObj.left_speed
      }
      else {
        this.left_speed = 0;
      }
      if (initObj.hasOwnProperty('left_target')) {
        this.left_target = initObj.left_target
      }
      else {
        this.left_target = 0;
      }
      if (initObj.hasOwnProperty('left_current')) {
        this.left_current = initObj.left_current
      }
      else {
        this.left_current = 0;
      }
      if (initObj.hasOwnProperty('right_speed')) {
        this.right_speed = initObj.right_speed
      }
      else {
        this.right_speed = 0;
      }
      if (initObj.hasOwnProperty('right_target')) {
        this.right_target = initObj.right_target
      }
      else {
        this.right_target = 0;
      }
      if (initObj.hasOwnProperty('right_current')) {
        this.right_current = initObj.right_current
      }
      else {
        this.right_current = 0;
      }
      if (initObj.hasOwnProperty('color')) {
        this.color = initObj.color
      }
      else {
        this.color = 0;
      }
      if (initObj.hasOwnProperty('gripper')) {
        this.gripper = initObj.gripper
      }
      else {
        this.gripper = 0;
      }
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type armpap_msgs
    // Serialize message field [type]
    bufferOffset = _serializer.string(obj.type, buffer, bufferOffset);
    // Serialize message field [ip]
    bufferOffset = _serializer.string(obj.ip, buffer, bufferOffset);
    // Serialize message field [port]
    bufferOffset = _serializer.uint32(obj.port, buffer, bufferOffset);
    // Serialize message field [id]
    bufferOffset = _serializer.uint8(obj.id, buffer, bufferOffset);
    // Serialize message field [inst_before]
    bufferOffset = _serializer.uint8(obj.inst_before, buffer, bufferOffset);
    // Serialize message field [base_speed]
    bufferOffset = _serializer.uint16(obj.base_speed, buffer, bufferOffset);
    // Serialize message field [base_target]
    bufferOffset = _serializer.int16(obj.base_target, buffer, bufferOffset);
    // Serialize message field [base_current]
    bufferOffset = _serializer.int16(obj.base_current, buffer, bufferOffset);
    // Serialize message field [left_speed]
    bufferOffset = _serializer.uint16(obj.left_speed, buffer, bufferOffset);
    // Serialize message field [left_target]
    bufferOffset = _serializer.int16(obj.left_target, buffer, bufferOffset);
    // Serialize message field [left_current]
    bufferOffset = _serializer.int16(obj.left_current, buffer, bufferOffset);
    // Serialize message field [right_speed]
    bufferOffset = _serializer.uint16(obj.right_speed, buffer, bufferOffset);
    // Serialize message field [right_target]
    bufferOffset = _serializer.int16(obj.right_target, buffer, bufferOffset);
    // Serialize message field [right_current]
    bufferOffset = _serializer.int16(obj.right_current, buffer, bufferOffset);
    // Serialize message field [color]
    bufferOffset = _serializer.uint8(obj.color, buffer, bufferOffset);
    // Serialize message field [gripper]
    bufferOffset = _serializer.uint8(obj.gripper, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = _serializer.string(obj.status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type armpap_msgs
    let len;
    let data = new armpap_msgs(null);
    // Deserialize message field [type]
    data.type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [ip]
    data.ip = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [port]
    data.port = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [id]
    data.id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [inst_before]
    data.inst_before = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [base_speed]
    data.base_speed = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [base_target]
    data.base_target = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [base_current]
    data.base_current = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [left_speed]
    data.left_speed = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [left_target]
    data.left_target = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [left_current]
    data.left_current = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [right_speed]
    data.right_speed = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [right_target]
    data.right_target = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [right_current]
    data.right_current = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [color]
    data.color = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [gripper]
    data.gripper = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [status]
    data.status = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.type);
    length += _getByteLength(object.ip);
    length += _getByteLength(object.status);
    return length + 38;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robots_msg/armpap_msgs';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '040948e8a15d597e107b2f1c93f40e51';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string type  # type of robot ”ARMPAP”
    string ip  # address of the robot ESP8866
    uint32 port  # port for comunication
    uint8 id  # uint8_t id of the robot 
    uint8 inst_before  # the last instruction runner 
    uint16 base_speed  # base speed
    int16 base_target  # base target position
    int16 base_current  # base current position
    uint16 left_speed  # left speed 
    int16 left_target  # left target position
    int16 left_current  # left current position
    uint16 right_speed  # right speed
    int16 right_target  # right target position
    int16 right_current  # right current position
    uint8 color  # color of the light 0..17
    uint8 gripper  # 0 : open, 1 : close
    string status  # "Completed" or "Error type 3"
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new armpap_msgs(null);
    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = ''
    }

    if (msg.ip !== undefined) {
      resolved.ip = msg.ip;
    }
    else {
      resolved.ip = ''
    }

    if (msg.port !== undefined) {
      resolved.port = msg.port;
    }
    else {
      resolved.port = 0
    }

    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.inst_before !== undefined) {
      resolved.inst_before = msg.inst_before;
    }
    else {
      resolved.inst_before = 0
    }

    if (msg.base_speed !== undefined) {
      resolved.base_speed = msg.base_speed;
    }
    else {
      resolved.base_speed = 0
    }

    if (msg.base_target !== undefined) {
      resolved.base_target = msg.base_target;
    }
    else {
      resolved.base_target = 0
    }

    if (msg.base_current !== undefined) {
      resolved.base_current = msg.base_current;
    }
    else {
      resolved.base_current = 0
    }

    if (msg.left_speed !== undefined) {
      resolved.left_speed = msg.left_speed;
    }
    else {
      resolved.left_speed = 0
    }

    if (msg.left_target !== undefined) {
      resolved.left_target = msg.left_target;
    }
    else {
      resolved.left_target = 0
    }

    if (msg.left_current !== undefined) {
      resolved.left_current = msg.left_current;
    }
    else {
      resolved.left_current = 0
    }

    if (msg.right_speed !== undefined) {
      resolved.right_speed = msg.right_speed;
    }
    else {
      resolved.right_speed = 0
    }

    if (msg.right_target !== undefined) {
      resolved.right_target = msg.right_target;
    }
    else {
      resolved.right_target = 0
    }

    if (msg.right_current !== undefined) {
      resolved.right_current = msg.right_current;
    }
    else {
      resolved.right_current = 0
    }

    if (msg.color !== undefined) {
      resolved.color = msg.color;
    }
    else {
      resolved.color = 0
    }

    if (msg.gripper !== undefined) {
      resolved.gripper = msg.gripper;
    }
    else {
      resolved.gripper = 0
    }

    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = ''
    }

    return resolved;
    }
};

module.exports = armpap_msgs;
