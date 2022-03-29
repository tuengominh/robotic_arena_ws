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

class cmd_msg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.label = null;
      this.task = null;
      this.id = null;
      this.inst = null;
      this.op1 = null;
      this.op2 = null;
      this.op3 = null;
      this.op4 = null;
      this.op5 = null;
    }
    else {
      if (initObj.hasOwnProperty('label')) {
        this.label = initObj.label
      }
      else {
        this.label = '';
      }
      if (initObj.hasOwnProperty('task')) {
        this.task = initObj.task
      }
      else {
        this.task = '';
      }
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('inst')) {
        this.inst = initObj.inst
      }
      else {
        this.inst = 0;
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
    // Serializes a message object of type cmd_msg
    // Serialize message field [label]
    bufferOffset = _serializer.string(obj.label, buffer, bufferOffset);
    // Serialize message field [task]
    bufferOffset = _serializer.string(obj.task, buffer, bufferOffset);
    // Serialize message field [id]
    bufferOffset = _serializer.uint8(obj.id, buffer, bufferOffset);
    // Serialize message field [inst]
    bufferOffset = _serializer.uint8(obj.inst, buffer, bufferOffset);
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
    //deserializes a message object of type cmd_msg
    let len;
    let data = new cmd_msg(null);
    // Deserialize message field [label]
    data.label = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [task]
    data.task = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [id]
    data.id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [inst]
    data.inst = _deserializer.uint8(buffer, bufferOffset);
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
    length += _getByteLength(object.label);
    length += _getByteLength(object.task);
    return length + 15;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robots_msg/cmd_msg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '868042847d61ba4fb9f71e6ab3606ffb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string label # label main task
    string task  # label subtask
    uint8 id     # [id, inst, op1, op2, op3, op4, op5, id]
    uint8 inst
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
    const resolved = new cmd_msg(null);
    if (msg.label !== undefined) {
      resolved.label = msg.label;
    }
    else {
      resolved.label = ''
    }

    if (msg.task !== undefined) {
      resolved.task = msg.task;
    }
    else {
      resolved.task = ''
    }

    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.inst !== undefined) {
      resolved.inst = msg.inst;
    }
    else {
      resolved.inst = 0
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

module.exports = cmd_msg;
