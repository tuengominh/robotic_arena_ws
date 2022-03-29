string type               # type of robot “TANKE20”
string ip                 # address of the robot ESP8866
uint32 port               # port for communication
uint8 id                  # uint8_t id of the robot
uint8 inst_before         # the last instruction runner 
float32 battery           # % of the battery
uint16 range_c            # laser sensor
int16 compas              # heading
uint8 motor1              # 0 : stop, 1 : CW, 2 : CCW FL
uint8 motor3              # 0 : stop, 1 : CW, 2 : CCW BL
uint8 motor2              # 0 : stop, 1 : CW, 2 : CCW FR
uint8 motor4              # 0 : stop, 1 : CW, 2 : CCW BR
robots_msg/camera jevois  # Aruco info
robots_msg/plat plat
string status             # "Completed" or "Error type 2"
