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
let plat = require('./plat.js');

//-----------------------------------------------------------

class tanke_msgs {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.type = null;
      this.ip = null;
      this.port = null;
      this.id = null;
      this.inst_before = null;
      this.battery = null;
      this.range_c = null;
      this.compas = null;
      this.motor1 = null;
      this.motor3 = null;
      this.motor2 = null;
      this.motor4 = null;
      this.jevois = null;
      this.plat = null;
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
      if (initObj.hasOwnProperty('range_c')) {
        this.range_c = initObj.range_c
      }
      else {
        this.range_c = 0;
      }
      if (initObj.hasOwnProperty('compas')) {
        this.compas = initObj.compas
      }
      else {
        this.compas = 0;
      }
      if (initObj.hasOwnProperty('motor1')) {
        this.motor1 = initObj.motor1
      }
      else {
        this.motor1 = 0;
      }
      if (initObj.hasOwnProperty('motor3')) {
        this.motor3 = initObj.motor3
      }
      else {
        this.motor3 = 0;
      }
      if (initObj.hasOwnProperty('motor2')) {
        this.motor2 = initObj.motor2
      }
      else {
        this.motor2 = 0;
      }
      if (initObj.hasOwnProperty('motor4')) {
        this.motor4 = initObj.motor4
      }
      else {
        this.motor4 = 0;
      }
      if (initObj.hasOwnProperty('jevois')) {
        this.jevois = initObj.jevois
      }
      else {
        this.jevois = new camera();
      }
      if (initObj.hasOwnProperty('plat')) {
        this.plat = initObj.plat
      }
      else {
        this.plat = new plat();
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
    // Serializes a message object of type tanke_msgs
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
    // Serialize message field [range_c]
    bufferOffset = _serializer.uint16(obj.range_c, buffer, bufferOffset);
    // Serialize message field [compas]
    bufferOffset = _serializer.int16(obj.compas, buffer, bufferOffset);
    // Serialize message field [motor1]
    bufferOffset = _serializer.uint8(obj.motor1, buffer, bufferOffset);
    // Serialize message field [motor3]
    bufferOffset = _serializer.uint8(obj.motor3, buffer, bufferOffset);
    // Serialize message field [motor2]
    bufferOffset = _serializer.uint8(obj.motor2, buffer, bufferOffset);
    // Serialize message field [motor4]
    bufferOffset = _serializer.uint8(obj.motor4, buffer, bufferOffset);
    // Serialize message field [jevois]
    bufferOffset = camera.serialize(obj.jevois, buffer, bufferOffset);
    // Serialize message field [plat]
    bufferOffset = plat.serialize(obj.plat, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = _serializer.string(obj.status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type tanke_msgs
    let len;
    let data = new tanke_msgs(null);
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
    // Deserialize message field [range_c]
    data.range_c = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [compas]
    data.compas = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [motor1]
    data.motor1 = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [motor3]
    data.motor3 = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [motor2]
    data.motor2 = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [motor4]
    data.motor4 = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [jevois]
    data.jevois = camera.deserialize(buffer, bufferOffset);
    // Deserialize message field [plat]
    data.plat = plat.deserialize(buffer, bufferOffset);
    // Deserialize message field [status]
    data.status = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.type);
    length += _getByteLength(object.ip);
    length += camera.getMessageSize(object.jevois);
    length += plat.getMessageSize(object.plat);
    length += _getByteLength(object.status);
    return length + 30;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robots_msg/tanke_msgs';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fa6b09dbb6438940f27323d40a64c654';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string type  # type of robot “TANKE20”
    string ip  # address of the robot ESP8866
    uint32 port  # port for communication
    uint8 id  # uint8_t id of the robot
    uint8 inst_before  # the last instruction runner 
    float32 battery  # % of the battery
    uint16 range_c  # laser sensor
    int16 compas  # heading
    uint8 motor1  # 0 : stop, 1 : CW, 2 : CCW FL
    uint8 motor3  # 0 : stop, 1 : CW, 2 : CCW BL
    uint8 motor2  # 0 : stop, 1 : CW, 2 : CCW FR
    uint8 motor4  # 0 : stop, 1 : CW, 2 : CCW BR
    robots_msg/camera jevois  # Aruco info
    robots_msg/plat plat
    string status  # "Completed" or "Error type 2"
    
    ================================================================================
    MSG: robots_msg/camera
    int8 detect  # 1 : detect, 0 : non detect    
    uint8 id  # id of fiducial
    int16 targx  # coordinate x
    int16 targy  # coordinate y
    string data  # all info in string
    
    ================================================================================
    MSG: robots_msg/plat
    string action  # "MOVING_UP", "MOVING_DOWN", "STOP"
    uint8 status  # 1 : up, 0 : down
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new tanke_msgs(null);
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

    if (msg.range_c !== undefined) {
      resolved.range_c = msg.range_c;
    }
    else {
      resolved.range_c = 0
    }

    if (msg.compas !== undefined) {
      resolved.compas = msg.compas;
    }
    else {
      resolved.compas = 0
    }

    if (msg.motor1 !== undefined) {
      resolved.motor1 = msg.motor1;
    }
    else {
      resolved.motor1 = 0
    }

    if (msg.motor3 !== undefined) {
      resolved.motor3 = msg.motor3;
    }
    else {
      resolved.motor3 = 0
    }

    if (msg.motor2 !== undefined) {
      resolved.motor2 = msg.motor2;
    }
    else {
      resolved.motor2 = 0
    }

    if (msg.motor4 !== undefined) {
      resolved.motor4 = msg.motor4;
    }
    else {
      resolved.motor4 = 0
    }

    if (msg.jevois !== undefined) {
      resolved.jevois = camera.Resolve(msg.jevois)
    }
    else {
      resolved.jevois = new camera()
    }

    if (msg.plat !== undefined) {
      resolved.plat = plat.Resolve(msg.plat)
    }
    else {
      resolved.plat = new plat()
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

module.exports = tanke_msgs;
