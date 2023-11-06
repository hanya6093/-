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

class ultrasonicRadar {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.radar1 = null;
      this.radar2 = null;
    }
    else {
      if (initObj.hasOwnProperty('radar1')) {
        this.radar1 = initObj.radar1
      }
      else {
        this.radar1 = 0.0;
      }
      if (initObj.hasOwnProperty('radar2')) {
        this.radar2 = initObj.radar2
      }
      else {
        this.radar2 = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ultrasonicRadar
    // Serialize message field [radar1]
    bufferOffset = _serializer.float32(obj.radar1, buffer, bufferOffset);
    // Serialize message field [radar2]
    bufferOffset = _serializer.float32(obj.radar2, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ultrasonicRadar
    let len;
    let data = new ultrasonicRadar(null);
    // Deserialize message field [radar1]
    data.radar1 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [radar2]
    data.radar2 = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'agv_msgs/ultrasonicRadar';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7b410d2498d0c5dc3043e12d93b45707';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 radar1 # 雷达1距离
    float32 radar2 # 雷达2距离
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ultrasonicRadar(null);
    if (msg.radar1 !== undefined) {
      resolved.radar1 = msg.radar1;
    }
    else {
      resolved.radar1 = 0.0
    }

    if (msg.radar2 !== undefined) {
      resolved.radar2 = msg.radar2;
    }
    else {
      resolved.radar2 = 0.0
    }

    return resolved;
    }
};

module.exports = ultrasonicRadar;
