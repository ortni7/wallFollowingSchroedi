// Auto-generated. Do not edit!

// (in-package ohm_mecanum_sim.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class WheelSpeed {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.w_front_left = null;
      this.w_front_right = null;
      this.w_rear_left = null;
      this.w_rear_right = null;
    }
    else {
      if (initObj.hasOwnProperty('w_front_left')) {
        this.w_front_left = initObj.w_front_left
      }
      else {
        this.w_front_left = 0.0;
      }
      if (initObj.hasOwnProperty('w_front_right')) {
        this.w_front_right = initObj.w_front_right
      }
      else {
        this.w_front_right = 0.0;
      }
      if (initObj.hasOwnProperty('w_rear_left')) {
        this.w_rear_left = initObj.w_rear_left
      }
      else {
        this.w_rear_left = 0.0;
      }
      if (initObj.hasOwnProperty('w_rear_right')) {
        this.w_rear_right = initObj.w_rear_right
      }
      else {
        this.w_rear_right = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WheelSpeed
    // Serialize message field [w_front_left]
    bufferOffset = _serializer.float64(obj.w_front_left, buffer, bufferOffset);
    // Serialize message field [w_front_right]
    bufferOffset = _serializer.float64(obj.w_front_right, buffer, bufferOffset);
    // Serialize message field [w_rear_left]
    bufferOffset = _serializer.float64(obj.w_rear_left, buffer, bufferOffset);
    // Serialize message field [w_rear_right]
    bufferOffset = _serializer.float64(obj.w_rear_right, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WheelSpeed
    let len;
    let data = new WheelSpeed(null);
    // Deserialize message field [w_front_left]
    data.w_front_left = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [w_front_right]
    data.w_front_right = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [w_rear_left]
    data.w_rear_left = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [w_rear_right]
    data.w_rear_right = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 32;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ohm_mecanum_sim/WheelSpeed';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '563013483b74b26d9449c1178a7c0316';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 w_front_left
    float64 w_front_right
    float64 w_rear_left
    float64 w_rear_right
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WheelSpeed(null);
    if (msg.w_front_left !== undefined) {
      resolved.w_front_left = msg.w_front_left;
    }
    else {
      resolved.w_front_left = 0.0
    }

    if (msg.w_front_right !== undefined) {
      resolved.w_front_right = msg.w_front_right;
    }
    else {
      resolved.w_front_right = 0.0
    }

    if (msg.w_rear_left !== undefined) {
      resolved.w_rear_left = msg.w_rear_left;
    }
    else {
      resolved.w_rear_left = 0.0
    }

    if (msg.w_rear_right !== undefined) {
      resolved.w_rear_right = msg.w_rear_right;
    }
    else {
      resolved.w_rear_right = 0.0
    }

    return resolved;
    }
};

module.exports = WheelSpeed;
