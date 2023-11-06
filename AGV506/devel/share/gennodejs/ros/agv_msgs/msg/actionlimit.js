// Auto-generated. Do not edit!

// (in-package agv_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class actionlimit {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.armlimit = null;
      this.fightlimit = null;
    }
    else {
      if (initObj.hasOwnProperty('armlimit')) {
        this.armlimit = initObj.armlimit
      }
      else {
        this.armlimit = 0;
      }
      if (initObj.hasOwnProperty('fightlimit')) {
        this.fightlimit = initObj.fightlimit
      }
      else {
        this.fightlimit = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type actionlimit
    // Serialize message field [armlimit]
    bufferOffset = _serializer.uint8(obj.armlimit, buffer, bufferOffset);
    // Serialize message field [fightlimit]
    bufferOffset = _serializer.uint8(obj.fightlimit, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type actionlimit
    let len;
    let data = new actionlimit(null);
    // Deserialize message field [armlimit]
    data.armlimit = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [fightlimit]
    data.fightlimit = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a message object
    return 'agv_msgs/actionlimit';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd6ed2d9fe059b091ce8972987df0bc2d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 armlimit # 大臂和限位1 2
    uint8 fightlimit  # 推斗和限位3 4
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new actionlimit(null);
    if (msg.armlimit !== undefined) {
      resolved.armlimit = msg.armlimit;
    }
    else {
      resolved.armlimit = 0
    }

    if (msg.fightlimit !== undefined) {
      resolved.fightlimit = msg.fightlimit;
    }
    else {
      resolved.fightlimit = 0
    }

    return resolved;
    }
};

module.exports = actionlimit;
