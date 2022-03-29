// Auto-generated. Do not edit!

// (in-package arena_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class SendRobotCommandRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.command = null;
    }
    else {
      if (initObj.hasOwnProperty('command')) {
        this.command = initObj.command
      }
      else {
        this.command = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SendRobotCommandRequest
    // Serialize message field [command]
    bufferOffset = _serializer.uint8(obj.command, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SendRobotCommandRequest
    let len;
    let data = new SendRobotCommandRequest(null);
    // Deserialize message field [command]
    data.command = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'arena_msgs/SendRobotCommandRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '36e1d21d1340e2a5e93f075b6457cbdf';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 command		# task command to perform
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SendRobotCommandRequest(null);
    if (msg.command !== undefined) {
      resolved.command = msg.command;
    }
    else {
      resolved.command = 0
    }

    return resolved;
    }
};

class SendRobotCommandResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.received = null;
    }
    else {
      if (initObj.hasOwnProperty('received')) {
        this.received = initObj.received
      }
      else {
        this.received = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SendRobotCommandResponse
    // Serialize message field [received]
    bufferOffset = _serializer.uint8(obj.received, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SendRobotCommandResponse
    let len;
    let data = new SendRobotCommandResponse(null);
    // Deserialize message field [received]
    data.received = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'arena_msgs/SendRobotCommandResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ebb83ae5c8ca20f07a8b8fffd3c9d3bf';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 received		# command received confirmation
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SendRobotCommandResponse(null);
    if (msg.received !== undefined) {
      resolved.received = msg.received;
    }
    else {
      resolved.received = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: SendRobotCommandRequest,
  Response: SendRobotCommandResponse,
  md5sum() { return '257718bad5e2af496975d318ff34944d'; },
  datatype() { return 'arena_msgs/SendRobotCommand'; }
};
