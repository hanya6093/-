#ifndef _AGV_JOY_H
#define _AGV_JOY_H

#include "ros/ros.h"
#include <sys/socket.h>          // socket头文件
#include <netinet/in.h>          // INET地址族头文件
#include <arpa/inet.h>           // INET地址转换头文件
#include <iostream>
#include <cstring>
#include <netinet/ip.h>
#include <netinet/tcp.h>
#include<linux/if_ether.h>
#include <cstring>
namespace agv_joy_ns {

    class Joy {

        public:
            Joy();
            // 监听端口
            void tcpip_listener();

        private:
            // 解析数据包
            void parse_tcpip(char* data ,int length);
            // 读取数据
            void read_data(char* tcp_data, int data_length);
            // 回传数据
            void reback_data(int fd);
            // 变量
            ros::NodeHandle nh_;
            std::string host;
            int port;
            // 这些消息类型会改变
            ros::ServiceClient drivestatus_client; //  驾驶状态
            ros::ServiceClient gear_client; // 档位状态
            ros::ServiceClient light_client; // 灯光状态
            ros::ServiceClient buzzer_client; // 喇叭
            ros::Publisher steerangle_pub; // 方向盘角度
            ros::Publisher acc_brake_pub; // 油门大小

            
    };

}

#endif
