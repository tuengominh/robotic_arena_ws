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

class cmd_robot_msg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ip = null;
      this.port = null;
      this.id = null;
      this.instruction = null;
      this.op1 = null;
      this.op2 = null;
      this.op3 = null;
      this.op4 = null;
      this.op5 = null;
    }
    else {
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
      if (initObj.hasOwnProperty('instruction')) {
        this.instruction = initObj.instruction
      }
      else {
        this.instruction = 0;
      }
      if (initObj.hasOwnProperty('op1')) {
        this.op1 = initObj.op1
      }
      else {
        this.op1 = 0;
      }
      if (initObj.hasOwnProperty('op2')) {
        this.op2 = initObj.op2
      }
      else {
        this.op2 = 0;
      }
      if (initObj.hasOwnProperty('op3')) {
        this.op3 = initObj.op3
      }
      else {
        this.op3 = 0;
      }
      if (initObj.hasOwnProperty('op4')) {
        this.op4 = initObj.op4
      }
      else {
        this.op4 = 0;
      }
      if (initObj.hasOwnProperty('op5')) {
        this.op5 = initObj.op5
      }
      else {
        this.op5 = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type cmd_robot_msg
    // Serialize message field [ip]
    bufferOffset = _serializer.string(obj.ip, buffer, bufferOffset);
    // Serialize message field [port]
    bufferOffset = _serializer.uint32(obj.port, buffer, bufferOffset);
    // Serialize message field [id]
    bufferOffset = _serializer.uint8(obj.id, buffer, bufferOffset);
    // Serialize message field [instruction]
    bufferOffset = _serializer.uint8(obj.instruction, buffer, bufferOffset);
    // Serialize message field [op1]
    bufferOffset = _serializer.uint8(obj.op1, buffer, bufferOffset);
    // Serialize message field [op2]
    bufferOffset = _serializer.uint8(obj.op2, buffer, bufferOffset);
    // Serialize message field [op3]
    bufferOffset = _serializer.uint8(obj.op3, buffer, bufferOffset);
    // Serialize message field [op4]
    bufferOffset = _serializer.uint8(obj.op4, buffer, bufferOffset);
    // Serialize message field [op5]
    bufferOffset = _serializer.uint8(obj.op5, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type cmd_robot_msg
    let len;
    let data = new cmd_robot_msg(null);
    // Deserialize message field [ip]
    data.ip = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [port]
    data.port = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [id]
    data.id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [instruction]
    data.instruction = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [op1]
    data.op1 = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [op2]
    data.op2 = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [op3]
    data.op3 = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [op4]
    data.op4 = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [op5]
    data.op5 = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.ip);
    return length + 15;
  }

  static datatype() {
    // Returns string type for a message object
    return 'arena_msgs/cmd_robot_msg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2c4d416eead0976d4457c7ea5840b85f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string ip # address of the robot ESP8866
    uint32 port # Port for comunication
    uint8 id # identyti of robot a uint8_t
    uint8 instruction # instruction 
    uint8 op1
    uint8 op2 
    uint8 op3
    uint8 op4
    uint8 op5
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new cmd_robot_msg(null);
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

    if (msg.instruction !== undefined) {
      resolved.instruction = msg.instruction;
    }
    else {
      resolved.instruction = 0
    }

    if (msg.op1 !== undefined) {
      resolved.op1 = msg.op1;
    }
    else {
      resolved.op1 = 0
    }

    if (msg.op2 !== undefined) {
      resolved.op2 = msg.op2;
    }
    else {
      resolved.op2 = 0
    }

    if (msg.op3 !== undefined) {
      resolved.op3 = msg.op3;
    }
    else {
      resolved.op3 = 0
    }

    if (msg.op4 !== undefined) {
      resolved.op4 = msg.op4;
    }
    else {
      resolved.op4 = 0
    }

    if (msg.op5 !== undefined) {
      resolved.op5 = msg.op5;
    }
    else {
      resolved.op5 = 0
    }

    return resolved;
    }
};

module.exports = cmd_robot_msg;
