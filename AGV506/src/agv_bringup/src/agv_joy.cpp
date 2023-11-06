#include "agv_bringup/agv_joy.h"
// #include "agv_msgs/Dmode.h"
// #include "agv_msgs/Gear.h"
// #include "agv_msgs/Light.h"
// #include "agv_msgs/steerangle.h"

 
namespace agv_joy_ns{

    Joy::Joy(){
        // 初始化ROS节点
        ros::NodeHandle nh_private("~");

        // 获取名为“host”的参数值，并将其存储在变量“host”中 自定义IP和端口
        nh_private.param<std::string>("host", host, "127.0.0.1");
        nh_private.param<int>("port", port, 5005);
        ROS_INFO("Listening on %s:%d", host.c_str(), port);
        // // 定义发布者和参数获取
        // this->drivestatus_client = nh_.serviceClient<agv_msgs::Dmode>("/drivestatus");
        // this->gear_client = nh_.serviceClient<agv_msgs::Gear>("/gear");
        // this->light_client = nh_.serviceClient<agv_msgs::Light>("/light"); 
        // // this->buzzer_client = nh_.serviceClient<agv_msgs::Buzzer>("/buzzer"); 
        // this->steerangle_pub = nh_.advertise<agv_msgs::steerangle>("/steerangle",10);
    

    }

    // 创建一个TCP/IP监听器
    void Joy::tcpip_listener(){
        // 创建一个TCP套接字
        int sockfd = socket(AF_INET, SOCK_STREAM, 0);
        if (sockfd == -1)
        {
            std::cout << "socket 创建失败： "<< std::endl;
            exit(1);
        }
        int opt = 1;
        setsockopt(sockfd,SOL_SOCKET,SO_REUSEADDR,&opt,sizeof( opt ));//复用释放端口，防止重启失败
        // 绑定套接字到指定的地址和端口号
        struct sockaddr_in addr;
        addr.sin_family = AF_INET;
        addr.sin_addr.s_addr = inet_addr(host.c_str());
        addr.sin_port = htons(port);
        int res = bind(sockfd, (struct sockaddr*)&addr, sizeof(addr));
        if (res == -1)
        {
            std::cout << "bind创建失败: " << std::endl;
            exit(-1);
        }
        std::cout << "bind ok 等待客户端的连接" << std::endl;
        // 开始监听连接 参数二：进程上限，一般小于30
        listen(sockfd, 30);
        // 等待客户端的连接accept()，返回用于交互的socket描述符
        struct sockaddr_in client;
        socklen_t len = sizeof(client);

        // ros::Rate loop_rate(20);
        while (ros::ok()) {
            // 接受一个连接请求
            int connfd = accept(sockfd, (struct sockaddr*)&client, &len);
            if (connfd == -1){
                ROS_INFO("accept error");
                exit(-1);
            }
            ROS_INFO("Connected by client");
            char *ip = inet_ntoa(client.sin_addr);
            std::cout << "客户： 【" << ip << "】连接成功" << std::endl;  
            // write(connfd, " Welcome to tcp/ip server ", 27);
            this->reback_data(connfd);
            
            std::cout << " Welcome to tcp/ip server "<< std::endl; 
            // 读取数据，解析并处理
            char buf[1024];
            int n;
            while ((n = read(connfd, buf, sizeof(buf))) > 0) {
                this->parse_tcpip(buf, n);
            }

            // 关闭连接
            close(connfd);
        }
        // 关闭套接字
        close(sockfd);
    }

    // 解析TCP/IP数据包 校验数据包
    void Joy::parse_tcpip(char* data, int length){
        // // 这里只是简单地将数据包的源地址和目标地址打印出来
        // // 源地址为第12~15个字节，用inet_ntoa函数将网络字节序的IPv4地址转换为字符串
        // char source_address[16];
        // snprintf(source_address, sizeof(source_address), "%d.%d.%d.%d",
        //         data[12], data[13], data[14], data[15]);
        // // 目标地址为第16~19个字节，同样用inet_ntoa函数将网络字节序的IPv4地址转换为字符串
        // char dest_address[16];
        // snprintf(dest_address, sizeof(dest_address), "%d.%d.%d.%d",
        //         data[16], data[17], data[18], data[19]);
        // // 打印地址信息
        // ROS_INFO("Source address: %s", source_address);
        // ROS_INFO("Destination address: %s", dest_address);

        // 处理数据包中的信息
        struct iphdr* iph = (struct iphdr*)(data); // 解析IP头部
        struct tcphdr* tcph = (struct tcphdr*)(data + iph->ihl * 4 * 8); // 解析TCP头部
        int tcp_data_start = iph->ihl * 4 *8 + tcph->doff * 4 * 8; // 计算TCP数据起始位置
        int tcp_data_length = length - tcp_data_start; // 计算TCP数据长度
        char* tcp_data = new char[tcp_data_length + 1]; // 分配缓存
        std::memcpy(tcp_data, data + tcp_data_start, tcp_data_length); // 读取TCP数据
        tcp_data[tcp_data_length] = '\0'; // 添加字符串结尾标记
        std::cout << "TCP data: " << tcp_data << std::endl; // 输出TCP数据

        // 解析出各部分信息
        this->read_data(tcp_data,tcp_data_length+1);
        delete[] tcp_data; // 释放缓存
    }

    // 读取数据 发布消息
    void Joy::read_data(char* tcp_data, int length){

    }

    // 回传数据 (待修改)
    void Joy::reback_data(int fd){
        // 获取数据

        //回写数据
        // write(fd, NULL, 27);
    }
}