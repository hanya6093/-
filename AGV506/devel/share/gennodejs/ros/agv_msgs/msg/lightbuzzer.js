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

class lightbuzzer {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.light = null;
      this.buzzer = null;
    }
    else {
      if (initObj.hasOwnProperty('light')) {
        this.light = initObj.light
      }
      else {
        this.light = 0;
      }
      if (initObj.hasOwnProperty('buzzer')) {
        this.buzzer = initObj.buzzer
      }
      else {
        this.buzzer = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type lightbuzzer
    // Serialize message field [light]
    bufferOffset = _serializer.uint8(obj.light, buffer, bufferOffset);
    // Serialize message field [buzzer]
    bufferOffset = _serializer.uint8(obj.buzzer, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type lightbuzzer
    let len;
    let data = new lightbuzzer(null);
    // Deserialize message field [light]
    data.light = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [buzzer]
    data.buzzer = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a message object
    return 'agv_msgs/lightbuzzer';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a462c3b9113a37311f2fdfd366a4203b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 light # 灯光
    uint8 buzzer # 蜂鸣器
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new lightbuzzer(null);
    if (msg.light !== undefined) {
      resolved.light = msg.light;
    }
    else {
      resolved.light = 0
    }

    if (msg.buzzer !== undefined) {
      resolved.buzzer = msg.buzzer;
    }
    else {
      resolved.buzzer = 0
    }

    return resolved;
    }
};

module.exports = lightbuzzer;
