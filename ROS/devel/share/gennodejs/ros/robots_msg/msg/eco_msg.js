// Auto-generated. Do not edit!

// (in-package robots_msg.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let motor = require('./motor.js');
let jevois = require('./jevois.js');
let lidar = require('./lidar.js');

//-----------------------------------------------------------

class eco_msg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.type = null;
      this.ip = null;
      this.port = null;
      this.id = null;
      this.inst_before = null;
      this.battery = null;
      this.tempe = null;
      this.line0 = null;
      this.line1 = null;
      this.motor1 = null;
      this.motor2 = null;
      this.camera = null;
      this.sensor_lidar = null;
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
      if (initObj.hasOwnProperty('tempe')) {
        this.tempe = initObj.tempe
      }
      else {
        this.tempe = 0.0;
      }
      if (initObj.hasOwnProperty('line0')) {
        this.line0 = initObj.line0
      }
      else {
        this.line0 = 0;
      }
      if (initObj.hasOwnProperty('line1')) {
        this.line1 = initObj.line1
      }
      else {
        this.line1 = 0;
      }
      if (initObj.hasOwnProperty('motor1')) {
        this.motor1 = initObj.motor1
      }
      else {
        this.motor1 = new motor();
      }
      if (initObj.hasOwnProperty('motor2')) {
        this.motor2 = initObj.motor2
      }
      else {
        this.motor2 = new motor();
      }
      if (initObj.hasOwnProperty('camera')) {
        this.camera = initObj.camera
      }
      else {
        this.camera = new jevois();
      }
      if (initObj.hasOwnProperty('sensor_lidar')) {
        this.sensor_lidar = initObj.sensor_lidar
      }
      else {
        this.sensor_lidar = new lidar();
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
    // Serializes a message object of type eco_msg
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
    // Serialize message field [tempe]
    bufferOffset = _serializer.float32(obj.tempe, buffer, bufferOffset);
    // Serialize message field [line0]
    bufferOffset = _serializer.uint16(obj.line0, buffer, bufferOffset);
    // Serialize message field [line1]
    bufferOffset = _serializer.uint16(obj.line1, buffer, bufferOffset);
    // Serialize message field [motor1]
    bufferOffset = motor.serialize(obj.motor1, buffer, bufferOffset);
    // Serialize message field [motor2]
    bufferOffset = motor.serialize(obj.motor2, buffer, bufferOffset);
    // Serialize message field [camera]
    bufferOffset = jevois.serialize(obj.camera, buffer, bufferOffset);
    // Serialize message field [sensor_lidar]
    bufferOffset = lidar.serialize(obj.sensor_lidar, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = _serializer.string(obj.status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type eco_msg
    let len;
    let data = new eco_msg(null);
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
    // Deserialize message field [tempe]
    data.tempe = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [line0]
    data.line0 = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [line1]
    data.line1 = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [motor1]
    data.motor1 = motor.deserialize(buffer, bufferOffset);
    // Deserialize message field [motor2]
    data.motor2 = motor.deserialize(buffer, bufferOffset);
    // Deserialize message field [camera]
    data.camera = jevois.deserialize(buffer, bufferOffset);
    // Deserialize message field [sensor_lidar]
    data.sensor_lidar = lidar.deserialize(buffer, bufferOffset);
    // Deserialize message field [status]
    data.status = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.type);
    length += _getByteLength(object.ip);
    length += jevois.getMessageSize(object.camera);
    length += _getByteLength(object.status);
    return length + 42;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robots_msg/eco_msg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '11c8a7147be0b5a11f6c147bd471ccda';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string type # type of robot “ECOLOGY20”
    string ip # address of the robot ESP8866
    uint32 port # Port for comunication
    uint8 id # identyti of robot a uint8_t
    uint8 inst_before # the last instruction runner 
    float32 battery # % of the battery
    float32 tempe # temperature sensor
    uint16 line0 # line sensor
    uint16 line1 
    robots_msg/motor motor1 # motor_left in ecology
    robots_msg/motor motor2 # motor_right in ecology
    robots_msg/jevois camera # Aruco info
    robots_msg/lidar sensor_lidar # only one value or 
    string status # "Completed" or "Error tipo 1"
    
    ================================================================================
    MSG: robots_msg/motor
    uint8 speed # 0..255 to ecology20 and 0..180 to tanke20
    uint8 dir # 0 stop 1:CW 2:CCW
    int16 pos # position 
    
    ================================================================================
    MSG: robots_msg/jevois
    string type
    uint8 id
    int16 targx #coordinate x
    int16 targy #coordinate y
    int16 targw # weight of fiducial
    int16 targh # hight of fiducial
    
    ================================================================================
    MSG: robots_msg/lidar
    int16 position
    int16 range
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new eco_msg(null);
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

    if (msg.tempe !== undefined) {
      resolved.tempe = msg.tempe;
    }
    else {
      resolved.tempe = 0.0
    }

    if (msg.line0 !== undefined) {
      resolved.line0 = msg.line0;
    }
    else {
      resolved.line0 = 0
    }

    if (msg.line1 !== undefined) {
      resolved.line1 = msg.line1;
    }
    else {
      resolved.line1 = 0
    }

    if (msg.motor1 !== undefined) {
      resolved.motor1 = motor.Resolve(msg.motor1)
    }
    else {
      resolved.motor1 = new motor()
    }

    if (msg.motor2 !== undefined) {
      resolved.motor2 = motor.Resolve(msg.motor2)
    }
    else {
      resolved.motor2 = new motor()
    }

    if (msg.camera !== undefined) {
      resolved.camera = jevois.Resolve(msg.camera)
    }
    else {
      resolved.camera = new jevois()
    }

    if (msg.sensor_lidar !== undefined) {
      resolved.sensor_lidar = lidar.Resolve(msg.sensor_lidar)
    }
    else {
      resolved.sensor_lidar = new lidar()
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

module.exports = eco_msg;
