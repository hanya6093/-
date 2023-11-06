#include "agv_bringup/can.h"


int main(int argc, char** argv) {
    // 初始化ROS节点
    ros::init(argc, argv, "can_node");

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