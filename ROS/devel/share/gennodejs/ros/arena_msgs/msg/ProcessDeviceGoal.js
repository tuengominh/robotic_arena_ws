// Auto-generated. Do not edit!

// (in-package arena_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class ProcessDeviceGoal {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.device_id = null;
      this.device_instance_id = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('device_id')) {
        this.device_id = initObj.device_id
      }
      else {
        this.device_id = '';
      }
      if (initObj.hasOwnProperty('device_instance_id')) {
        this.device_instance_id = initObj.device_instance_id
      }
      else {
        this.device_instance_id = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ProcessDeviceGoal
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [device_id]
    bufferOffset = _serializer.string(obj.device_id, buffer, bufferOffset);
    // Serialize message field [device_instance_id]
    bufferOffset = _serializer.string(obj.device_instance_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ProcessDeviceGoal
    let len;
    let data = new ProcessDeviceGoal(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [device_id]
    data.device_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [device_instance_id]
    data.device_instance_id = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += _getByteLength(object.device_id);
    length += _getByteLength(object.device_instance_id);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'arena_msgs/ProcessDeviceGoal';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9dfc0484f536d1205ff684272a362447';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    Header header
    
    # Device id
    string device_id
    
    # Device instance id
    string device_instance_id
    
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ProcessDeviceGoal(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.device_id !== undefined) {
      resolved.device_id = msg.device_id;
    }
    else {
      resolved.device_id = ''
    }

    if (msg.device_instance_id !== undefined) {
      resolved.device_instance_id = msg.device_instance_id;
    }
    else {
      resolved.device_instance_id = ''
    }

    return resolved;
    }
};

module.exports = ProcessDeviceGoal;
