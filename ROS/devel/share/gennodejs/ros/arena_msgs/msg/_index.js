
"use strict";

let lidar = require('./lidar.js');
let cmd_robot_msg = require('./cmd_robot_msg.js');
let ContinuousAction = require('./ContinuousAction.js');
let ColorDetected = require('./ColorDetected.js');
let jevois = require('./jevois.js');
let camera = require('./camera.js');
let eco_msg = require('./eco_msg.js');
let DiscreteAction = require('./DiscreteAction.js');
let motor = require('./motor.js');
let eco_msgs = require('./eco_msgs.js');
let ProcessDeviceAction = require('./ProcessDeviceAction.js');
let ProcessDeviceGoal = require('./ProcessDeviceGoal.js');
let ProcessDeviceResult = require('./ProcessDeviceResult.js');
let ProcessDeviceActionFeedback = require('./ProcessDeviceActionFeedback.js');
let ProcessDeviceActionGoal = require('./ProcessDeviceActionGoal.js');
let ProcessDeviceActionResult = require('./ProcessDeviceActionResult.js');
let ProcessDeviceFeedback = require('./ProcessDeviceFeedback.js');

module.exports = {
  lidar: lidar,
  cmd_robot_msg: cmd_robot_msg,
  ContinuousAction: ContinuousAction,
  ColorDetected: ColorDetected,
  jevois: jevois,
  camera: camera,
  eco_msg: eco_msg,
  DiscreteAction: DiscreteAction,
  motor: motor,
  eco_msgs: eco_msgs,
  ProcessDeviceAction: ProcessDeviceAction,
  ProcessDeviceGoal: ProcessDeviceGoal,
  ProcessDeviceResult: ProcessDeviceResult,
  ProcessDeviceActionFeedback: ProcessDeviceActionFeedback,
  ProcessDeviceActionGoal: ProcessDeviceActionGoal,
  ProcessDeviceActionResult: ProcessDeviceActionResult,
  ProcessDeviceFeedback: ProcessDeviceFeedback,
};
