// Auto-generated. Do not edit!

// (in-package robots_msg.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let xl320 = require('./xl320.js');
let jevois = require('./jevois.js');

//-----------------------------------------------------------

class arm_msg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.type = null;
      this.ip = null;
      this.port = null;
      this.id = null;
      this.inst_before = null;
      this.battery = null;
      this.servo0 = null;
      this.servo1 = null;
      this.servo2 = null;
      this.servo3 = null;
      this.servo4 = null;
      this.servo5 = null;
      this.camera = null;
      this.magnet = null;
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
      if (initObj.hasOwnProperty('servo0')) {
        this.servo0 = initObj.servo0
      }
      else {
        this.servo0 = new xl320();
      }
      if (initObj.hasOwnProperty('servo1')) {
        this.servo1 = initObj.servo1
      }
      else {
        this.servo1 = new xl320();
      }
      if (initObj.hasOwnProperty('servo2')) {
        this.servo2 = initObj.servo2
      }
      else {
        this.servo2 = new xl320();
      }
      if (initObj.hasOwnProperty('servo3')) {
        this.servo3 = initObj.servo3
      }
      else {
        this.servo3 = new xl320();
      }
      if (initObj.hasOwnProperty('servo4')) {
        this.servo4 = initObj.servo4
      }
      else {
        this.servo4 = new xl320();
      }
      if (initObj.hasOwnProperty('servo5')) {
        this.servo5 = initObj.servo5
      }
      else {
        this.servo5 = new xl320();
      }
      if (initObj.hasOwnProperty('camera')) {
        this.camera = initObj.camera
      }
      else {
        this.camera = new jevois();
      }
      if (initObj.hasOwnProperty('magnet')) {
        this.magnet = initObj.magnet
      }
      else {
        this.magnet = 0;
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
    // Serializes a message object of type arm_msg
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
    // Serialize message field [servo0]
    bufferOffset = xl320.serialize(obj.servo0, buffer, bufferOffset);
    // Serialize message field [servo1]
    bufferOffset = xl320.serialize(obj.servo1, buffer, bufferOffset);
    // Serialize message field [servo2]
    bufferOffset = xl320.serialize(obj.servo2, buffer, bufferOffset);
    // Serialize message field [servo3]
    bufferOffset = xl320.serialize(obj.servo3, buffer, bufferOffset);
    // Serialize message field [servo4]
    bufferOffset = xl320.serialize(obj.servo4, buffer, bufferOffset);
    // Serialize message field [servo5]
    bufferOffset = xl320.serialize(obj.servo5, buffer, bufferOffset);
    // Serialize message field [camera]
    bufferOffset = jevois.serialize(obj.camera, buffer, bufferOffset);
    // Serialize message field [magnet]
    bufferOffset = _serializer.uint8(obj.magnet, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = _serializer.string(obj.status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type arm_msg
    let len;
    let data = new arm_msg(null);
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
    // Deserialize message field [servo0]
    data.servo0 = xl320.deserialize(buffer, bufferOffset);
    // Deserialize message field [servo1]
    data.servo1 = xl320.deserialize(buffer, bufferOffset);
    // Deserialize message field [servo2]
    data.servo2 = xl320.deserialize(buffer, bufferOffset);
    // Deserialize message field [servo3]
    data.servo3 = xl320.deserialize(buffer, bufferOffset);
    // Deserialize message field [servo4]
    data.servo4 = xl320.deserialize(buffer, bufferOffset);
    // Deserialize message field [servo5]
    data.servo5 = xl320.deserialize(buffer, bufferOffset);
    // Deserialize message field [camera]
    data.camera = jevois.deserialize(buffer, bufferOffset);
    // Deserialize message field [magnet]
    data.magnet = _deserializer.uint8(buffer, bufferOffset);
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
    return length + 71;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robots_msg/arm_msg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '01914fc38e80d47bed67675890824f7b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string type # type of robot  ”ARM20”
    string ip # address of the robot ESP8866
    uint32 port # Port for comunication
    uint8 id # identyti of robot a uint8_t
    uint8 inst_before # the last instruction runner 
    float32 battery # % of the battery
    robots_msg/xl320 servo0 # only arm20
    robots_msg/xl320 servo1 # only arm20
    robots_msg/xl320 servo2 # only arm20
    robots_msg/xl320 servo3 # only arm20
    robots_msg/xl320 servo4 # only arm20
    robots_msg/xl320 servo5 # only arm20
    robots_msg/jevois camera # Aruco info
    uint8 magnet            # status magnet 1 ON 0 OFF
    string status # "Completed" or "Error tipo 3"
    ================================================================================
    MSG: robots_msg/xl320
    uint8  ID
    uint8  LED
    uint16 speed
    uint16 Goal_Position
    uint16 Present_Position
    
    ================================================================================
    MSG: robots_msg/jevois
    string type
    uint8 id
    int16 targx #coordinate x
    int16 targy #coordinate y
    int16 targw # weight of fiducial
    int16 targh # hight of fiducial
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new arm_msg(null);
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

    if (msg.servo0 !== undefined) {
      resolved.servo0 = xl320.Resolve(msg.servo0)
    }
    else {
      resolved.servo0 = new xl320()
    }

    if (msg.servo1 !== undefined) {
      resolved.servo1 = xl320.Resolve(msg.servo1)
    }
    else {
      resolved.servo1 = new xl320()
    }

    if (msg.servo2 !== undefined) {
      resolved.servo2 = xl320.Resolve(msg.servo2)
    }
    else {
      resolved.servo2 = new xl320()
    }

    if (msg.servo3 !== undefined) {
      resolved.servo3 = xl320.Resolve(msg.servo3)
    }
    else {
      resolved.servo3 = new xl320()
    }

    if (msg.servo4 !== undefined) {
      resolved.servo4 = xl320.Resolve(msg.servo4)
    }
    else {
      resolved.servo4 = new xl320()
    }

    if (msg.servo5 !== undefined) {
      resolved.servo5 = xl320.Resolve(msg.servo5)
    }
    else {
      resolved.servo5 = new xl320()
    }

    if (msg.camera !== undefined) {
      resolved.camera = jevois.Resolve(msg.camera)
    }
    else {
      resolved.camera = new jevois()
    }

    if (msg.magnet !== undefined) {
      resolved.magnet = msg.magnet;
    }
    else {
      resolved.magnet = 0
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

module.exports = arm_msg;
