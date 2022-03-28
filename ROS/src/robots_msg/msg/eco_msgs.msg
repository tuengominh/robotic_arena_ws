string type               # type of robot “ECOLOGY20”
string ip                 # address of the robot ESP8866
uint32 port               # port for comunication
uint8 id                  # uint8_t id of the robot
uint8 inst_before         # the last instruction runner 
float32 battery           # % of the battery
uint16 range_l            # left ir sensor
uint16 range_c            # laser sensor
uint16 range_r            # right ir sensor 
int16 compas              # heading
int16 pos_motor1          # position motor left
int16 pos_motor2          # position motor right 
robots_msg/camera jevois  # Aruco info
string status             # "Completed" or "Error type 1"
