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

class ContinuousAction {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.robot_id = null;
      this.left_motor = null;
      this.right_motor = null;
    }
    else {
      if (initObj.hasOwnProperty('robot_id')) {
        this.robot_id = initObj.robot_id
      }
      else {
        this.robot_id = '';
      }
      if (initObj.hasOwnProperty('left_motor')) {
        this.left_motor = initObj.left_motor
      }
      else {
        this.left_motor = 0.0;
      }
      if (initObj.hasOwnProperty('right_motor')) {
        this.right_motor = initObj.right_motor
      }
      else {
        this.right_motor = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ContinuousAction
    // Serialize message field [robot_id]
    bufferOffset = _serializer.string(obj.robot_id, buffer, bufferOffset);
    // Serialize message field [left_motor]
    bufferOffset = _serializer.float32(obj.left_motor, buffer, bufferOffset);
    // Serialize message field [right_motor]
    bufferOffset = _serializer.float32(obj.right_motor, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ContinuousAction
    let len;
    let data = new ContinuousAction(null);
    // Deserialize message field [robot_id]
    data.robot_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [left_motor]
    data.left_motor = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [right_motor]
    data.right_motor = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.robot_id);
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'arena_msgs/ContinuousAction';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4fc9c8444f1e9ed5a0212e0b05e258d4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ContinuousAction
    
    # Provide information about the type of action the robot will perform
    # Robot id
    string robot_id
    
    # Continuous action
    float32 left_motor
    float32 right_motor
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ContinuousAction(null);
    if (msg.robot_id !== undefined) {
      resolved.robot_id = msg.robot_id;
    }
    else {
      resolved.robot_id = ''
    }

    if (msg.left_motor !== undefined) {
      resolved.left_motor = msg.left_motor;
    }
    else {
      resolved.left_motor = 0.0
    }

    if (msg.right_motor !== undefined) {
      resolved.right_motor = msg.right_motor;
    }
    else {
      resolved.right_motor = 0.0
    }

    return resolved;
    }
};

module.exports = ContinuousAction;
