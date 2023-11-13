/*
    功能：
        解析手柄和遥控的CAN数据
        获取上层控制数据
        将对车辆底层的控制数据组合成CAN数据帧发送给车载控制器

*/

#include "ros/ros.h"
#include "agv_bringup/candevice.h"
#include <iostream>
#include <pthread.h>


// 回调函数，开始处理CAN1口数据
void* can2_process(void* arg) {
    can_ns::CanDevice& candev = can_ns::CanDevice::getinstance();
    // 启动can口进行数据处理
    candev.CanIndCtl();
    // 调用CAN1的接收函数
    candev.Can2Receive();
    candev.CanReset();
    pthread_exit(0);
    return;
}


int main(int argc, char** argv) {
    // 初始化ROS节点
    ros::init(argc, argv, "vehicle_ctrl_node");

    // 使用多线程解析数据
    can_ns::CanDevice& candev = can_ns::CanDevice::getinstance();

    // 创建接收线程
    pthread_t thread_can;
    if (pthread_create(&thread_can, nullptr, can2_process, nullptr) != 0) {
        std::cout << "Error create can1_proecess" << std::endl;
        exit(1);
    }
    if (pthread_detach(thread_can) != 0) {
        std::cout << "thread detach failure" << std::endl;
        exit(1);
    }

    try{
        // 进入ROS主循环
        ros::spin();
    } catch (ros::Exception &e) {
        ROS_ERROR("Exception in tcpip_listener: %s", e.what());
    }
    return 0;
}