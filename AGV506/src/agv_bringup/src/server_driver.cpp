/*
    创建一个joy的TCP控制节点，意义不明
*/


#include "agv_bringup/agv_joy.h"    // joy解析类

int main(int argc, char** argv)
{
    // 初始化ROS节点
    ros::init(argc, argv, "tcpip_listener");
    agv_joy_ns::Joy joy;
    // 开始监听TCP/IP连接
    try {
        joy.tcpip_listener();
        ros::spin();
    } catch (ros::Exception& e) {
        ROS_ERROR("Exception in tcpip_listener: %s", e.what());
    }

    // 返回
    return 0;
}
