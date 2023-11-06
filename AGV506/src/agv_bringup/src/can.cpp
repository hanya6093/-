#include "agv_bringup/can.h"
/*找设备、打开设备、初始化设备、启动设备、收发数据、重置设备、关闭设备*/


namespace can_ns {
    Can::Can() {
        // 初始化ROS节点
        ros::NodeHandle nh_private("~");

        // 定义发布者和参与者
        this->gearBrake_pub = nh_.advertise<agv_msgs::gearbrake>("/gearbrake", 100);
        this->lightBuzzer_pub = nh_.advertise<agv_msgs::lightbuzzer>("/lightbuzzer", 100);
        this->actionLimit_pub = nh_.advertise<agv_msgs::actionlimit>("/actionlimit", 100);
        this->onSite_pub = nh_.advertise<agv_msgs::p_dmode>("/p_dmode", 100);
        this->direction_pub = nh_.advertise<agv_msgs::steerangle>("/steerangle", 100);
        this->ultrasonicRadar_pub = nh_.advertise<agv_msgs::ultrasonicRadar>("/ultrasonicRadar", 100);
        this->accelerator_sub = nh_.subscribe<agv_msgs::accelerator>("/accelerator",  10, &Can::accCallback, this);
        this->direction_sub = nh_.subscribe<agv_msgs::direction>("/direction", 100, &Can::dirCallback, this);
        this->gear_ser = nh_.advertiseService("Gear", &Can::doGear, this);
        this->light_ser = nh_.advertiseService("Light", &Can::doLight, this);
        this->brake_ser = nh_.advertiseService("Brake", &Can::doBrake, this);
        this->arm_ser = nh_.advertiseService("Arm", &Can::doArm, this);
        this->fight_ser = nh_.advertiseService("Fight", &Can::doFight, this);
        this->mode_ser = nh_.advertiseService("Dmode", &Can::doMode, this);
        // 找设备、打开设备、初始化设备
        // 初始化设备           
        num = VCI_FindUsbDevice2(this->pInfo1);
        std::cout << ">>USBCAN DEVICE NUM:" << this->num << " " << "PCS" << std::endl;
        // 打开设备
        if (VCI_OpenDevice(VCI_USBCAN2, 0, 0) == 1){ //打开设备 第二个参数：索引号(只有一个设备时为0)
            std::cout << ">>open deivce success!" << std::endl;
        } else {
            std::cout << ">>open deivce error!" << std::endl;
            exit(1);
        }
        // 读取设备序列号、版本等信息。
        if (VCI_ReadBoardInfo(VCI_USBCAN2, 0, &pInfo) == 1) {
            std::cout << "Get VCI_ReadBoardInfo success!" << std::endl;
        } else {
            std::cout << "Get VCI_ReadBoardInfo error!" << std::endl;
            exit(1);
        }
        // 初始化参数，严格参数二次开发函数库说明书。
	    this->config.AccCode = 0x181; // 此状态表示接受所有设备的帧
        this->config.AccMask = 0x7FF;
        this->config.Filter = 1;//接收所有帧
        this->config.Timing0 = 0x01;/*波特率250 Kbps  0x01  0x1C*/
        this->config.Timing1 = 0x1C;
        this->config.Mode = 0;//正常模式	
        // 初始化
        if (VCI_InitCAN(VCI_USBCAN2, 0, 0, &config) != 1)
        {
            std::cout << ">>Init CAN1 error" << std::endl;
            VCI_CloseDevice(VCI_USBCAN2, 0); 
        }

        // 初始化帧
        this->obj = new VCI_CAN_OBJ;
        this->obj->ID = 0X181;
        this->obj->SendType = 0;
        this->obj->RemoteFlag = 0;
        this->obj->ExternFlag = 0;
        this->obj->DataLen = 8;
        // 数据需要初始化
        this->obj->Data[0] = 0x04;
        for (int i = 1; i < this->obj->DataLen; i++) {
            this->obj->Data[i] = 0;
        }
    }

    // 启动设备、收发数据、重置设备、关闭设备 
    void Can::manager_can() {
        // 启动can
        if (VCI_StartCAN(VCI_USBCAN2, 0, 1) != 1)
        {
            std::cout << ">>Start can2 error" << std::endl;
            VCI_CloseDevice(VCI_USBCAN2, 0);
        }
        // 创建线程处理
        std::thread rx_thread(&Can::periodicThread_receive, this);
        std::thread tx_thread(&Can::periodicThread_send, this);
        // 等待
        rx_thread.join();  
        tx_thread.join();
    }

    // 接受线程运行定时
    void Can::periodicThread_receive() {
        while (true) {
            // 每10ms运行一次
            // std::this_thread::sleep_for(std::chrono::milliseconds(100));
            this->receiveCANMessage();
        }
    }

    void Can::periodicThread_send() {
        while(true) {
            // 每10ms运行一次
            if (mode_flag) {
            std::this_thread::sleep_for(std::chrono::milliseconds(100));
            this->sendCANMessage();
            }
            std::this_thread::sleep_for(std::chrono::milliseconds(100));
        }
    }

    // 接收CAN消息函数
    void Can::receiveCANMessage() {
        // 接收数据
        int reclen = 0;
        int ind = 0;
        int count = 0;
        VCI_CAN_OBJ rec[3000]; // 接受缓存
        // 调用接受函数 处理数据
        if ((reclen = VCI_Receive(VCI_USBCAN2, 0, ind, rec, 3000, 100)) > 0) {
            // 接收数据进行处理
            for (int j = 0; j < reclen; j++) {
                // 创建消息格式
                this->publishData(rec->Data, rec->DataLen);
            }
        } else {
            std::cout << "暂无数据!" << std::endl;
        }       
    }

    // 发送数据
    void Can::sendCANMessage() {
        if (VCI_Transmit(VCI_USBCAN2, 0, 0, this->obj, 1) == 1) {
            std::cout << "send success" << std::endl;
        } else {
            std::cout << "send again" << std::endl;
        }
    }

    // 发布数据 采用小端模式
    void Can::publishData(const BYTE* data, int len) {
        // 定义消息类型
        agv_msgs::gearbrake gearBrake;
        agv_msgs::lightbuzzer lightBuzzer;
        agv_msgs::actionlimit actionLimit;
        agv_msgs::p_dmode pDmode;
        agv_msgs::steerangle steerAngle;
        agv_msgs::ultrasonicRadar ultrasonicRadar;
        // 消息赋值
        gearBrake.gear = data[0] & 0x03;
        gearBrake.brake = (data[1] & 0x02) >> 1;
        gearBrake.accelerator = (short)data[3] << 8 | data[2];
        lightBuzzer.light = (data[0] & 0x04) >> 2;
        lightBuzzer.buzzer = (data[1] & 0x04) >> 2;
        actionLimit.armlimit = ((data[0] & 0x18) << 1) | ((data[1] & 0x18) >> 3);
        actionLimit.fightlimit = ((data[0] & 0x60) >> 1) | ((data[1] & 0x60) >> 5);
        pDmode.mode = (data[1] & 0x80) >> 7;
        steerAngle.angle = (short)data[5] << 8 | data[4];
        ultrasonicRadar.radar1 = data[6];
        ultrasonicRadar.radar2 = data[7];
        // 发布消息
        this->gearBrake_pub.publish(gearBrake);
        this->lightBuzzer_pub.publish(lightBuzzer);
        this->actionLimit_pub.publish(actionLimit);
        this->onSite_pub.publish(pDmode);
        this->direction_pub.publish(steerAngle);
        this->ultrasonicRadar_pub.publish(ultrasonicRadar);
        ros::spinOnce();
    }

    // 回调函数 获取油门
    void Can::accCallback(const agv_msgs::accelerator::ConstPtr& msg_in) {
        obj->Data[2] = static_cast<unsigned char>(msg_in->accelerator & 0xFF);
        obj->Data[3] = static_cast<unsigned char>((msg_in->accelerator & 0xFF00) >> 8);
    }

    // 回调函数 获取方向角度
    void Can::dirCallback(const agv_msgs::direction::ConstPtr& msg_in){
        obj->Data[4] = static_cast<unsigned char>(msg_in->angle & 0xFF);
        obj->Data[5] = static_cast<unsigned char>((msg_in->angle & 0xFF00) >> 8);
    }

    // 设置档位
    bool Can::doGear( agv_msgs::Gear::Request& req, agv_msgs::Gear::Response& resp) {
        u_char newbit = req.gear & 0x03;
        if(newbit == 0) {
            this->obj->Data[0] = (obj->Data[0] & 0xF8) | 0x04;
        } else {
            this->obj->Data[0] = (this->obj->Data[0] & 0xF8) | newbit;
        }
        resp.result = true;
        return true;
    }

    bool Can::doLight( agv_msgs::Light::Request& req, agv_msgs::Light::Response& resp) {
        if (req.light) {
            this->obj->Data[0] = this->obj->Data[0] | 0x08;
        } else {
            this->obj->Data[0] = this->obj->Data[0] & 0xf7;
        }
        resp.result = true;
        return true;
    }   

    bool Can::doBrake(agv_msgs::Brake::Request& req, agv_msgs::Brake::Response& resp){ 
        if (req.brake) {
            this->obj->Data[0] = this->obj->Data[0] | 0x10;
            this->obj->Data[2] = 0;
            this->obj->Data[3] = 0;
        } else {
            this->obj->Data[0] = this->obj->Data[0] & 0xEF;
        }
        resp.result = true;
        return true;
    }
    
    bool Can::doArm(agv_msgs::Arm::Request& req, agv_msgs::Arm::Response& resp) {
        uint8_t newbit = (req.arm & 0x03) << 5;
        this->obj->Data[0] = (this->obj->Data[0] & 0x9F) | newbit;
        resp.result = true;
        return true;
    }

    bool Can::doFight(agv_msgs::Fight::Request& req, agv_msgs::Fight::Response& resp) {
        uint8_t newbit = req.fight & 0x03;
        if (newbit == 0) {
            this->obj->Data[0] = this->obj->Data[0] & 0x7F;
            this->obj->Data[1] = 0;
        } else if (newbit == 1) {
            this->obj->Data[0] = this->obj->Data[0] | 0x80;
            this->obj->Data[1] = 0;
        } else {
            this->obj->Data[0] = this->obj->Data[0] & 0x7F;
            this->obj->Data[1] = 0x01;
        }
        resp.result = true;
        return true;        
    }

    bool Can::doMode(agv_msgs::Dmode::Request& req, agv_msgs::Dmode::Response& resp) {
        if(req.mode) {
            this->mode_flag = true;
        } else {
            this->mode_flag = false;
        }
        resp.result = true;
        return true;
    }

    Can::~Can() {
        VCI_ResetCAN(VCI_USBCAN2, 0, 0);//复位CAN1通道
        VCI_CloseDevice(VCI_USBCAN2,0);//关闭设备。
        delete obj;
        obj = nullptr;
    }
}
