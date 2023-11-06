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

class accelerator {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.accelerator = null;
    }
    else {
      if (initObj.hasOwnProperty('accelerator')) {
        this.accelerator = initObj.accelerator
      }
      else {
        this.accelerator = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type accelerator
    // Serialize message field [accelerator]
    bufferOffset = _serializer.uint32(obj.accelerator, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type accelerator
    let len;
    let data = new accelerator(null);
    // Deserialize message field [accelerator]
    data.accelerator = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'agv_msgs/accelerator';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd267542ebde270d3d9efa2af5f119108';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 accelerator # 油门数据
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new accelerator(null);
    if (msg.accelerator !== undefined) {
      resolved.accelerator = msg.accelerator;
    }
    else {
      resolved.accelerator = 0
    }

    return resolved;
    }
};

module.exports = accelerator;
