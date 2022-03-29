string type          # type of robot ”ARMPAP”
string ip            # address of the robot ESP8866
uint32 port          # port for comunication
uint8 id             # uint8_t id of the robot 
uint8 inst_before    # the last instruction runner 
uint16 base_speed    # base speed
int16 base_target    # base target position
int16 base_current   # base current position
uint16 left_speed    # left speed 
int16 left_target    # left target position
int16 left_current   # left current position
uint16 right_speed   # right speed
int16 right_target   # right target position
int16 right_current  # right current position
uint8 color          # color of the light 0..17
uint8 gripper        # 0 : open, 1 : close
string status        # "Completed" or "Error type 3"
