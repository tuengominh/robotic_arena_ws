// Auto-generated. Do not edit!

// (in-package robots_msg.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let camera = require('./camera.js');

//-----------------------------------------------------------

class eco_msgs {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.type = null;
      this.ip = null;
      this.port = null;
      this.id = null;
      this.inst_before = null;
      this.battery = null;
      this.range_l = null;
      this.range_c = null;
      this.range_r = null;
      this.compas = null;
      this.pos_motor1 = null;
      this.pos_motor2 = null;
      this.jevois = null;
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
      if (initObj.hasOwnProperty('battery')) {
        this.battery = initObj.battery
      }
      else {
        this.battery = 0.0;
      }
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
      if (initObj.hasOwnProperty('compas')) {
        this.compas = initObj.compas
      }
      else {
        this.compas = 0;
      }
      if (initObj.hasOwnProperty('pos_motor1')) {
        this.pos_motor1 = initObj.pos_motor1
      }
      else {
        this.pos_motor1 = 0;
      }
      if (initObj.hasOwnProperty('pos_motor2')) {
        this.pos_motor2 = initObj.pos_motor2
      }
      else {
        this.pos_motor2 = 0;
      }
      if (initObj.hasOwnProperty('jevois')) {
        this.jevois = initObj.jevois
      }
      else {
        this.jevois = new camera();
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
    // Serializes a message object of type eco_msgs
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
    // Serialize message field [battery]
    bufferOffset = _serializer.float32(obj.battery, buffer, bufferOffset);
    // Serialize message field [range_l]
    bufferOffset = _serializer.uint16(obj.range_l, buffer, bufferOffset);
    // Serialize message field [range_c]
    bufferOffset = _serializer.uint16(obj.range_c, buffer, bufferOffset);
    // Serialize message field [range_r]
    bufferOffset = _serializer.uint16(obj.range_r, buffer, bufferOffset);
    // Serialize message field [compas]
    bufferOffset = _serializer.int16(obj.compas, buffer, bufferOffset);
    // Serialize message field [pos_motor1]
    bufferOffset = _serializer.int16(obj.pos_motor1, buffer, bufferOffset);
    // Serialize message field [pos_motor2]
    bufferOffset = _serializer.int16(obj.pos_motor2, buffer, bufferOffset);
    // Serialize message field [jevois]
    bufferOffset = camera.serialize(obj.jevois, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = _serializer.string(obj.status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type eco_msgs
    let len;
    let data = new eco_msgs(null);
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
    // Deserialize message field [battery]
    data.battery = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [range_l]
    data.range_l = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [range_c]
    data.range_c = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [range_r]
    data.range_r = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [compas]
    data.compas = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [pos_motor1]
    data.pos_motor1 = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [pos_motor2]
    data.pos_motor2 = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [jevois]
    data.jevois = camera.deserialize(buffer, bufferOffset);
    // Deserialize message field [status]
    data.status = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.type);
    length += _getByteLength(object.ip);
    length += camera.getMessageSize(object.jevois);
    length += _getByteLength(object.status);
    return length + 34;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robots_msg/eco_msgs';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b06ae61beeb797a599af8e0764bf224c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string type  # type of robot “ECOLOGY20”
    string ip  # address of the robot ESP8866
    uint32 port  # port for comunication
    uint8 id  # uint8_t id of the robot
    uint8 inst_before  # the last instruction runner 
    float32 battery  # % of the battery
    uint16 range_l  # left ir sensor
    uint16 range_c  # laser sensor
    uint16 range_r  # right ir sensor 
    int16 compas  # heading
    int16 pos_motor1  # position motor left
    int16 pos_motor2  # position motor right 
    robots_msg/camera jevois  # Aruco info
    string status  # "Completed" or "Error type 1"
    
    ================================================================================
    MSG: robots_msg/camera
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
    const resolved = new eco_msgs(null);
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

    if (msg.battery !== undefined) {
      resolved.battery = msg.battery;
    }
    else {
      resolved.battery = 0.0
    }

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

    if (msg.compas !== undefined) {
      resolved.compas = msg.compas;
    }
    else {
      resolved.compas = 0
    }

    if (msg.pos_motor1 !== undefined) {
      resolved.pos_motor1 = msg.pos_motor1;
    }
    else {
      resolved.pos_motor1 = 0
    }

    if (msg.pos_motor2 !== undefined) {
      resolved.pos_motor2 = msg.pos_motor2;
    }
    else {
      resolved.pos_motor2 = 0
    }

    if (msg.jevois !== undefined) {
      resolved.jevois = camera.Resolve(msg.jevois)
    }
    else {
      resolved.jevois = new camera()
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

module.exports = eco_msgs;
