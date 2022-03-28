
"use strict";

let lidar = require('./lidar.js');
let resource = require('./resource.js');
let tanke_msgs = require('./tanke_msgs.js');
let armpap_msgs = require('./armpap_msgs.js');
let target_data = require('./target_data.js');
let jevois = require('./jevois.js');
let camera = require('./camera.js');
let discrete_action = require('./discrete_action.js');
let plat = require('./plat.js');
let motor = require('./motor.js');
let eco_msgs = require('./eco_msgs.js');

module.exports = {
  lidar: lidar,
  resource: resource,
  tanke_msgs: tanke_msgs,
  armpap_msgs: armpap_msgs,
  target_data: target_data,
  jevois: jevois,
  camera: camera,
  discrete_action: discrete_action,
  plat: plat,
  motor: motor,
  eco_msgs: eco_msgs,
};
