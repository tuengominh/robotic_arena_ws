#!/usr/bin/env python3
import rospy
from std_msgs.msg import Int16MultiArray, MultiArrayDimension, String
from robots_msg.msg import eco_msgs, tanke_msgs, armpap_msgs

robot_dict = {# name: ip, id, port, canal_pub, pub_msg, canal_cmd, node
              #        0   1    2      3          4         5       6
             "eco00":["192.168.0.138", 170, 11412, "/eco00/pub", "/eco00/pub_msg", "/eco00/cmd"],
             "eco01":["192.168.0.172", 172, 11413, "/eco01/pub", "/eco01/pub_msg", "/eco01/cmd"],
             "eco02":["192.168.0.110", 171, 11415, "/eco02/pub", "/eco02/pub_msg", "/eco02/cmd"],
             "tanke00":["192.168.0.108", 254, 11416, "/tanke00/pub", "/tanke00/pub_msg", "/tanke00/cmd"],
             "armpap00":["192.168.0.112", 254, 11417, "/armpap00/pub", "/armpap00/pub_msg", "/armpap00/cmd"],
             "beacon01":["192.168.0.136", 136, 11418, "/beacon01/pub", "/beacon01/pub_msg", "/beacon01/cmd"],
             "beacon02":["192.168.0.180", 137, 11419, "/beacon02/pub", "/beacon02/pub_msg", "/beacon02/cmd"]}

class EcoRobot:
    def __init__(self, model):
        global robot_dict
        data = []
        data = robot_dict[model]
        print("Initializing robot " + model + "...")
        
        self.model = model
        self.ip = data[0]
        self.id = data[1]
        self.port = data[2]
        self.canal_pub = data[3]
        self.pub_msg = data[4]
        self.canal_cmd = data[5]
        #self.node = data[6]
        self.message = ["COMPLETED", "ERROR", "FAILURE", "PUBLISHER", "CHARGEME"]
        self.message_before = []
        self.inst_before = 0
        #self.working = False
        #self.time_before = rospy.get_time()
        #self.time_inst_before = 0.0

        # Read sensor data from robots
        #rospy.init_node(self.node, anonymous=False)
        rospy.Subscriber(self.canal_pub, String, self.read_dat)
        
        # Instructions: [n_elemts, op1, op2, op3, op4, op5, "description"]
        self.eco_dict = {
            1:[2,0,0,0,0,0,"Forward max"],   
            2:[1,0,0,0,0,0,"Backward max"],  
            3:[1,0,0,0,0,0,"Turn left max"],   
            4:[1,0,0,0,0,0,"Turn right max"],   
            5:[2,200,0,0,0,0,"Forward "],  # default 200
            6:[2,200,0,0,0,0,"Backward "],  # default 200
            7:[2,200,0,0,0,0,"Turn left "],  # default 200
            8:[2,200,0,0,0,0,"Turn right "],  # default 200
            9:[1,0,0,0,0,0,"Stop"],  
            10:[7,0,0,0,0,0,"Control "],  # default stop
            11:[1,0,0,0,0,0,"Reset position"], 
            16:[4,7,3,200,0,0,"LED blinking"],  # default green 3 blink
            17:[2,1,0,0,0,0,"Show color"],  # default red
            21:[1,0,0,0,0,0,"ROS message"], 
            33:[1,0,0,0,0,0,"Restart Jevois"], 
            34:[1,0,0,0,0,0,"Init Jevois"], 
            35:[1,0,0,0,0,0,"Run script"],
            64:[4,90,1,225,0,0,"Turn angle"],  # default left 90
            65:[3,4,200,0,0,0,"Forward until range"],  # default dist 200 speed 200 
            80:[1,0,0,0,0,0,"Stop ..."], 
            81:[1,0,0,0,0,0,"Stop"]
        }

    def read_dat(self, rosdata):
        print("Listening to robot " + self.canal_pub + "...")
        pub_eco = rospy.Publisher(self.pub_msg, eco_msgs, queue_size=1)
        msg = eco_msgs()   
        data = rosdata.data
        dat = data.split(",")
        print("Robot type: " + dat[0])
        
        if dat[0] == 'E':
            msg.type = "ECOLOGY"
            msg.ip = self.ip
            msg.port = self.port
            msg.id = int(dat[1])
            msg.inst_before = self.inst_before
            msg.battery = float(dat[2])
            msg.range_l = int(dat[3])
            msg.range_r = int(dat[4])
            msg.pos_motor1 = int(dat[5])
            msg.pos_motor2 = int(dat[6])
            msg.jevois.detect = int(dat[7])
            msg.jevois.id = int(dat[8])
            msg.jevois.targx = 0 #int(dat[9])
            msg.jevois.targy = int(dat[10])
            msg.range_c = int(dat[11])
            msg.jevois.data = ""
            msg.status = self.message[int(dat[12])]
            msg.compas = int(dat[13])
            
            # Publish sensor data from robots
            print("Sending sensor data to " + self.pub_msg + "...")
            pub_eco.publish(msg)
            #if msg.status == self.message[0]: # "COMPLETED"
            #    self.working = False

    def inst(self, *args):
        #time_now = rospy.get_time()
        cmd_pub = rospy.Publisher(self.canal_cmd, Int16MultiArray, queue_size=10)
        msg = Int16MultiArray()
        msg.layout.dim.append(MultiArrayDimension())
        msg.layout.dim[0].label = self.model
        msg.layout.dim[0].size = 8
        msg.layout.dim[0].stride = 1
        msg.layout.data_offset = 0
        
        message = []
        command = self.eco_dict[args[0]]  # charge the default values of the instruction
        n = len(args)
        if( n > command[0]):  # if the arguments are bigger than necessary
            n = command[0]
        for x in range(1,n):  # put the new args to the instruction
            command[x] = args[x]
        message = [self.id, args[0], command[1], command[2], command[3], command[4], command[5], self.id]
        
        # Send instructions to robots
        #if time_now > self.time_before + self.time_inst_before:
        msg.data = message
        print("Sending motor command to " + self.canal_cmd + "...")
        cmd_pub.publish(msg)
        #self.time_before = time_now
        #self.time_inst_before = (command[5] * 50) / 1000
        self.inst_before = args[0]
        self.message_before = message 
        
        #rospy.sleep(0.02)
        return command[6] + " " + self.model 

class TankeRobot:
    def __init__(self, model):
        global robot_dict
        data = []
        data = robot_dict[model]
        print("Initializing robot " + model + "...")
        
        self.model = model
        self.ip = data[0]
        self.id = data[1]
        self.port = data[2]
        self.canal_pub = data[3]
        self.pub_msg = data[4]
        self.canal_cmd = data[5]
        #self.node = data[6]
        self.message = ["COMPLETED", "ERROR", "FAILURE", "PUBLISHER", "CHARGEME"]
        self.plataction = ["MOVING_UP", "MOVING_DOWN", "STOP"]
        self.message_before = []
        self.inst_before = 0
        #self.working = False
        
        # Read sensor data from robots
        #rospy.init_node(self.node, anonymous=False)
        rospy.Subscriber(self.canal_pub, String, self.read_dat)
        
        # Instructions : [n_elemts, op1, op2, op3, op4, op5, "description"]
        self.tanke_dict = {
            1:[3,200,200,0,0,0,"Forward max"],  # default 200 delay 200
            2:[3,200,200,0,0,0,"Backward max"],  # default 200 delay 200
            3:[3,200,200,0,0,0,"Turn left max"],  # default 200 delay 200
            4:[3,200,200,0,0,0,"Turn right max"],  # default 200 delay 200
            5:[3,200,200,0,0,0,"Lateral left max"],  # default 200 delay 200
            6:[3,200,200,0,0,0,"Lateral right max"],
            7:[1,0,0,0,0,0,"Stop"],
            8:[6,180,180,0,0,4,"Control "],  # default forward with 200 delay
            10:[1,0,0,0,0,0,"Reset position"],  
            11:[3,200,200,0,0,0,"Left forward max"],  # default 200 dealy 200
            12:[3,200,200,0,0,0,"Left backward max"], 
            13:[3,200,200,0,0,0,"Right forward max"], 
            14:[3,200,200,0,0,0,"Right backward max"], 
            16:[1,0,0,0,0,0,"Platform up"], 
            17:[1,0,0,0,0,0,"Platform down"], 
            18:[4,7,3,200,0,0,"LED blinking"],  # default green 3 blink
            19:[2,1,0,0,0,0,"Show color"], 
            21:[1,0,0,0,0,0,"ROS message"], 
            33:[1,0,0,0,0,0,"Restart Jevois"], 
            34:[1,0,0,0,0,0,"Init Jevois"], 
            35:[1,0,0,0,0,0,"Run script"], 
            64:[4,90,1,225,0,0,"Turn angle"],  # default left 90
            65:[3,4,200,0,0,0,"Forward until range"]  # default dist 200 speed 200 
        }

    def read_dat(self, rosdata):
        print("Listening to robot " + self.canal_pub + "...")
        pub_tanke = rospy.Publisher(self.pub_msg, tanke_msgs, queue_size=1)
        msg = tanke_msgs()
        data = rosdata.data
        dat = data.split(",")  
        #print("Robot type: " + dat[0])
        
        if dat[0] =='T':
            msg.type = dat[0]
            msg.ip = self.ip
            msg.port = self.port
            msg.id = int(dat[1])
            msg.inst_before = int(dat[2])
            msg.battery = float(dat[3])
            msg.range_c = int(dat[4])
            msg.compas = int(dat[5])
            msg.motor1 = int(dat[6])
            msg.motor2 = int(dat[7])
            msg.motor3 = int(dat[8])
            msg.motor4 = int(dat[9])
            msg.jevois.detect = int(dat[10])
            msg.jevois.id = int(dat[11])
            msg.jevois.targx = int(dat[12])
            msg.jevois.targy = int(dat[13])
            msg.jevois.data = ""
            
            if msg.inst_before == 16:
                msg.plat.action = self.plataction[0]
            elif msg.inst_before == 17:
                msg.plat.action = self.plataction[1]
            else:
                msg.plat.action = self.plataction[2]
            msg.plat.status = int(dat[15])
            msg.status = self.message[int(dat[16])]
            
            # Publish sensor data from robots
            print("Sending sensor data to " + self.pub_msg + "...")
            pub_tanke.publish(msg)
            #if msg.status == self.message[0]: # "COMPLETED"
            #    self.working = False
            #r.sleep()
         
    def inst(self, *args):
        cmd_pub = rospy.Publisher(self.canal_cmd, Int16MultiArray, queue_size=10)
        msg = Int16MultiArray()
        msg.layout.dim.append(MultiArrayDimension())
        msg.layout.dim[0].label = self.model
        msg.layout.dim[0].size = 8
        msg.layout.dim[0].stride = 1
        msg.layout.data_offset = 0
        
        message = []
        command = self.tanke_dict[args[0]]  # charge the default values of the instruction
        n = len(args)
        if( n > command[0]):  # if the arguments are bigger than necessary
            n = command[0]
        for x in range(1,n):  # put the new args to the instruction
            command[x] = args[x]
        message = [self.id, args[0], command[1], command[2], command[3], command[4], command[5], self.id]
        
        # Send instructions to robots
        if message != self.message_before:
            msg.data = message
            print("Sending motor command to " + self.canal_cmd + "...")
            cmd_pub.publish(msg)
            self.inst_before = args[0]
            self.message_before = message
        
        #rospy.sleep(0.02)
        return command[6] + " " + self.model 

class ArmpapRobot:
    def __init__(self, model ):
        global robot_dict
        data = []
        data = robot_dict[model]
        print("Initializing robot " + model + "...")
        
        self.model = model
        self.ip = data[0]
        self.id = data[1]
        self.port = data[2]
        self.canal_pub = data[3]
        self.pub_msg = data[4]
        self.canal_cmd = data[5]
        #self.node = data[6]
        self.message = ["COMPLETED", "ERROR", "FAILURE", "PUBLISHER", "CHARGEME"]
        self.message_before = []
        self.inst_before = 0
        #self.working = False
        
        # Read sensor data from robots
        #rospy.init_node(self.node, anonymous=False)
        rospy.Subscriber(self.canal_pub, String, self.read_dat)
        
        # Instructions: [n_elemts, op1, op2, op3, op4, op5, "description"]
        self.arm_dict ={
            1:[4,0,0,0,0,0,"Control a motor"],  # not default
            2:[4,0,0,0,0,0,"Send parametres to a motor"],  # not default
            3:[1,0,0,0,0,0,"Move"],  # move all motors to the position defined
            4:[3,4,176,0,0,0,"Change speed motors"],  # default 1200
            5:[3,0,7,0,0,0,"Set a individual led colour"],  # default 0 green
            6:[2,7,0,0,0,0,"Show color"],  # default green
            7:[2,11,0,0,0,0,"Rail colour"],  # default blue
            8:[3,1,2,0,0,0,"LED blinking"],  # default red two times
            9:[3,0,0,0,0,0,"Move to "],  # default 0 speed 1200
            10:[3,0,0,0,0,0,"Manual control"],  # no default
            21:[1,0,0,0,0,0,"ROS message"],  # nothing to add
            36:[1,0,0,0,0,0,"Gripper close"], 
            37:[1,0,0,0,0,0,"Gripper open"], 
            80:[3,9,196,0,0,0,"Move conveyer belt to "],  # default 2500
            81:[1,0,0,0,0,0,"Move conveyer belt to 2500"], 
            82:[1,0,0,0,0,0,"Move conveyer belt to 0"], 
            83:[1,0,0,0,0,0,"Initialize position to 0"], 
            96:[1,0,0,0,0,0,"Stop emergency"], 
            97:[1,0,0,0,0,0,"Restart the system"],  # restart
            98:[1,0,0,0,0,0,"Rearm the system"],  # rearm
            99:[1,0,0,0,0,0,"Another rearm"]  # rearm
        }

    def read_dat(self, rosdata):
        #self.working = False
        print("Listening to robot " + self.canal_pub + "...")
        pub_armpap = rospy.Publisher(self.pub_msg, armpap_msgs, queue_size=1)
        msg = armpap_msgs()
        data = rosdata.data
        dat = data.split(",")
        #print("Robot type: " + dat[0])
         
        if dat[0] == 'A':
            msg.type = dat[0]
            msg.ip = self.ip
            msg.port = self.port
            msg.id = int(dat[3])
            msg.inst_before = int(dat[4])
            msg.base_speed = int(dat[5])
            msg.base_target = int(dat[6])
            msg.base_current = int(dat[7])
            msg.left_speed = int(dat[8])
            msg.left_target = int(dat[9])
            msg.left_current = int(dat[10])
            msg.right_speed = int(dat[11])
            msg.right_target = int(dat[12])
            msg.right_current = int(dat[13])
            msg.color = int(dat[14])
            msg.gripper = int(dat[15])
            msg.status = dat[16]
            
            # Publish sensor data from robots
            print("Sending sensor data to " + self.pub_msg + "...")
            pub_armpap.publish(msg)
            #if msg.status == self.message[0]: # "COMPLETED"
            #    self.working = False
            #elif msg.status == self.message[3]: # "PUBLISHER"
            #    self.working = False
      
    def inst(self, *args):
        #self.working = True
        cmd_pub = rospy.Publisher(self.canal_cmd, Int16MultiArray, queue_size=1)
        msg = Int16MultiArray()
        msg.layout.dim.append(MultiArrayDimension())
        msg.layout.dim[0].label = self.model
        msg.layout.dim[0].size = 8
        msg.layout.dim[0].stride = 1
        msg.layout.data_offset = 0
        
        message = []
        command = self.arm_dict[args[0]]  # charge the default values of the instruction
        n = len(args)
        if( n > command[0]):  # if the arguments are bigger than necessary
            n = command[0]
        for x in range(1,n):  # put the new arg to the instruction
            command[x] = args[x]
        message = [self.id, args[0], command[1], command[2], command[3], command[4], command[5], self.id]
        
        # Send instructions to robots
        #if message != self.message_before:
        msg.data = message
        print("Sending motor command to " + self.canal_cmd + "...")
        cmd_pub.publish(msg)
        self.inst_before = args[0]
        self.message_before = message
        
        #rospy.sleep(0.025)
        return command[6] + " " + self.model 

class BeaconRobot:
    def __init__(self, model ):
        global robot_dict
        data = []
        data = robot_dict[model]
        
        self.model = model
        self.ip = data[0]
        self.id = data[1]
        self.port = data[2]
        self.canal_pub = data[3]
        self.pub_msg = data[4]
        self.canal_cmd = data[5]
        #self.node = data[6]
        self.message = ["COMPLETED", "ERROR", "FAILURE", "PUBLISHER", "CHARGEME"]
        self.message_before = []
        self.inst_before = 0
        
        # Read sensor data from robots
        #rospy.init_node(self.node, anonymous=False)
        rospy.Subscriber(self.canal_pub, String, self.read_dat)
        
        # Instructions: [n_elemts, op1, op2, op3, op4, op5, "description"]
        self.beacon_dict ={
            1:[2,0,0,0,0,0,"Show color"],  # default no color
            2:[4,7,3,200,0,0,"LED blinking"]  # default green 3 blink
        }

    def read_dat(self, rosdata):
        print("Listening to robot " + self.canal_pub + "...")
        pub_beacon = rospy.Publisher(self.pub_msg, String, queue_size=1)
        msg = String()
        msg.data = self.model + ":" + rosdata.data + " " + str(self.port)

        # Publish sensor data from robots
        print("Sending sensor data to " + self.pub_msg + "...")
        pub_beacon.publish(msg)
   
    def inst(self, *args):
        cmd_pub = rospy.Publisher(self.canal_cmd, Int16MultiArray, queue_size=1)
        msg = Int16MultiArray()
        msg.layout.dim.append(MultiArrayDimension())
        msg.layout.dim[0].label = self.model
        msg.layout.dim[0].size = 8
        msg.layout.dim[0].stride = 1
        msg.layout.data_offset = 0
        
        message = []
        command = self.beacon_dict[args[0]]  # charge the default values of the instruction
        n = len(args)
        if( n > command[0]):  # if the arguments are bigger than necessary
            n = command[0]
        for x in range(1,n):  # put the new arg to the instruction
            command[x] = args[x]
        message = [self.id, args[0], command[1], command[2], command[3], command[4], command[5], self.id]
        
        # Send instructions to robots
        #if message != self.message_before:
        msg.data = message
        print("Sending motor command to " + self.canal_cmd + "...")
        cmd_pub.publish(msg)
        self.inst_before = args[0]
        self.message_before = message
        
        return command[6] + " " + self.model      


