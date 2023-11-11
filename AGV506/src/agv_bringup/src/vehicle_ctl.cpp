/*
    CAN通讯节点调用，进入CAN数据处理部分，接收或者发送CAN数据
*/


#include "agv_bringup/can.h"


int main(int argc, char** argv) {
    // 初始化ROS节点
    ros::init(argc, argv, "vehicle_ctrl_node");

    can_ns::Can can;
    try{
        can.manager_can();
        // 进入ROS主循环
        ros::spin();
    } catch (ros::Exception &e) {
        ROS_ERROR("Exception in tcpip_listener: %s", e.what());
    }
    return 0;
}