#ifndef _CAN_H
#define _CAN_H

#include <stdio.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include "controlcan.h"
#include <iostream>
#include <mutex>
#include <thread>
#include <chrono>
#include <ctime>
#include <cstdlib>
#include "unistd.h"
#include "ros/ros.h"
#include "std_msgs/String.h"
#include "agv_msgs/gearbrake.h"
#include "agv_msgs/lightbuzzer.h"
#include "agv_msgs/actionlimit.h"
#include "agv_msgs/p_dmode.h"
#include "agv_msgs/steerangle.h"
#include "agv_msgs/ultrasonicRadar.h"
#include "agv_msgs/Arm.h"
#include "agv_msgs/Brake.h"
#include "agv_msgs/Dmode.h"
#include "agv_msgs/Fight.h"
#include "agv_msgs/Gear.h"
#include "agv_msgs/Light.h"
#include "agv_msgs/accelerator.h"
#include "agv_msgs/direction.h"
namespace can_ns {

    class Can {

        public:
            Can();
            ~Can();
            void manager_can();

        private:
            ros::NodeHandle nh_;
            std::mutex can_mutex; // 创建一个互斥对象
            // CAN-usb二次开发库参数
            VCI_BOARD_INFO pInfo;//用来获取设备信息。
            int count=0;//数据列表中，用来存储列表序号。
            VCI_BOARD_INFO pInfo1 [50];
            VCI_CAN_OBJ *obj;
            int num = 0;
            bool mode_flag = true; // 默认位远程遥控模式
            VCI_INIT_CONFIG config; // 数据帧格式
            //发布者和订阅者 服务端处理
            ros::Publisher gearBrake_pub; // 挡位 刹车 油门状态
            ros::Publisher lightBuzzer_pub; // 灯光喇叭
            ros::Publisher actionLimit_pub; // 大臂铲斗和限位开关1 2 3 4
            ros::Publisher onSite_pub; // 人工信号
            ros::Publisher direction_pub; // 方向状态
            ros::Publisher ultrasonicRadar_pub; // 雷达12距离
            ros::Subscriber accelerator_sub; // 控制油门订阅
            ros::Subscriber direction_sub; // 控制方向订阅
            ros::ServiceServer gear_ser; // 挡位控制
            ros::ServiceServer light_ser; // 灯光控制
            ros::ServiceServer brake_ser; // 刹车控制
            ros::ServiceServer arm_ser; // 大臂控制
            ros::ServiceServer fight_ser; // 推斗
            ros::ServiceServer mode_ser; // 模式
            // 方法
            // 运行定时
            void periodicThread_send();
            void periodicThread_receive();
            // 接收CAN消息函数
            void receiveCANMessage();
            void sendCANMessage();
            // 数据处理并发布
            void publishData(const BYTE* data, int len);
            // 回调函数
            void accCallback(const agv_msgs::accelerator::ConstPtr& msg_in); // 油门回调函数
            void dirCallback(const agv_msgs::direction::ConstPtr& msg_in); // 方向回调函数
            bool doGear( agv_msgs::Gear::Request& req,  agv_msgs::Gear::Response& resp);
            bool doLight( agv_msgs::Light::Request& req,  agv_msgs::Light::Response& resp);
            bool doBrake( agv_msgs::Brake::Request& req,  agv_msgs::Brake::Response& resp);
            bool doArm( agv_msgs::Arm::Request& req,  agv_msgs::Arm::Response& resp);
            bool doFight( agv_msgs::Fight::Request& req,  agv_msgs::Fight::Response& resp);
            bool doMode( agv_msgs::Dmode::Request& req,  agv_msgs::Dmode::Response& resp);
    };
}

#endif