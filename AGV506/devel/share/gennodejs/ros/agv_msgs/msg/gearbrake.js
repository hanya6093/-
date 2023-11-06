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

class gearbrake {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.gear = null;
      this.brake = null;
      this.accelerator = null;
    }
    else {
      if (initObj.hasOwnProperty('gear')) {
        this.gear = initObj.gear
      }
      else {
        this.gear = 0;
      }
      if (initObj.hasOwnProperty('brake')) {
        this.brake = initObj.brake
      }
      else {
        this.brake = 0;
      }
      if (initObj.hasOwnProperty('accelerator')) {
        this.accelerator = initObj.accelerator
      }
      else {
        this.accelerator = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type gearbrake
    // Serialize message field [gear]
    bufferOffset = _serializer.uint8(obj.gear, buffer, bufferOffset);
    // Serialize message field [brake]
    bufferOffset = _serializer.uint8(obj.brake, buffer, bufferOffset);
    // Serialize message field [accelerator]
    bufferOffset = _serializer.uint32(obj.accelerator, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type gearbrake
    let len;
    let data = new gearbrake(null);
    // Deserialize message field [gear]
    data.gear = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [brake]
    data.brake = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [accelerator]
    data.accelerator = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 6;
  }

  static datatype() {
    // Returns string type for a message object
    return 'agv_msgs/gearbrake';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '010d6ca71c6e537a0de387e33a7506ee';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 gear # 档位
    uint8 brake # 刹车
    uint32 accelerator # 油门
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new gearbrake(null);
    if (msg.gear !== undefined) {
      resolved.gear = msg.gear;
    }
    else {
      resolved.gear = 0
    }

    if (msg.brake !== undefined) {
      resolved.brake = msg.brake;
    }
    else {
      resolved.brake = 0
    }

    if (msg.accelerator !== undefined) {
      resolved.accelerator = msg.accelerator;
    }
    else {
      resolved.accelerator = 0
    }

    return resolved;
    }
};

module.exports = gearbrake;
