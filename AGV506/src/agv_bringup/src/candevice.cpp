#include "agv_bringup/candevice.h"
/*找设备、打开设备、初始化设备、启动设备、收发数据、重置设备、关闭设备*/


namespace can_ns {
    void CanDevice::CanDevInit() {

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
            std::cout << "can_num: " << pInfo.can_Num << std::endl;
        } else {
            std::cout << "Get VCI_ReadBoardInfo error!" << std::endl;
            exit(1);
        }

        // 接收和发送来自车载控制器的数据
        VCI_INIT_CONFIG config1;
        config1.AccCode = 0;
        config1.AccMask = 0xFFFFFFFF;
        config1.Filter = 1;
        config1.Mode = 0;
        config1.Timing0 = 0x01;
        config1.Timing1 = 0x1c;

        if (VCI_InitCAN(VCI_USBCAN2, 0, 0, &config1) == 1) {
            std::cout << "初始化CAN1口成功" << std::endl;
        } else {
            std::cout << "初始化CAN1口失败" << std::endl;
            exit(1);
        }

        if (VCI_InitCAN(VCI_USBCAN2, 0, 0, &config1) == 1) {
            std::cout << "初始化CAN1口成功" << std::endl;
        } else {
            std::cout << "初始化CAN1口失败" << std::endl;
            exit(1);
        }

        // 初始化设备
        firststart = false;
    }

    // 启动设备、收发数据、重置设备、关闭设备 
    // 设备第一次打开返回0，已经打开返回1，否则返回-1
    int CanDevice::CanIndCtl() {
        
        if (firststart) {
            return 1;
        }
        // 启动can
        if (VCI_StartCAN(VCI_USBCAN2, 0, 0) != 1)
        {
            std::cout << ">>Start can2 error" << std::endl;
            VCI_CloseDevice(VCI_USBCAN2, 0);
            return -1;
        }

        if (VCI_StartCAN(VCI_USBCAN2, 0, 1) != 1)
        {
            std::cout << ">>Start can2 error" << std::endl;
            VCI_CloseDevice(VCI_USBCAN2, 0);
            return -1;
        }
        firststart = true;
        return 0;
    }

    // 接收CAN消息函数 如何解决调用问题
    void CanDevice::Can1Receive() {
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
                // this->publishData(rec->Data, rec->DataLen);
            }
        } else {
            std::cout << "暂无数据!" << std::endl;
        }       
    }

    void CanDevice::Can2Receive() {
        // 一边接收，一边发送数据
        // 接收数据
        int reclen = 0;
        VCI_CAN_OBJ rec[3000]; // 接收缓存
        // 调用接受函数 处理数据
        while (isCan2send) {
            if ((reclen = VCI_Receive(VCI_USBCAN2, 0, 1, rec, 3000, 100)) > 0) {
                // 接收数据进行处理
                for (int j = 0; j < reclen; j++) {
                    // 处理数据
                    if(rec[j].ID == 0x381) {
                        if ((rec[j].Data[0] & 0xcf) != 0) {
                            if ((rec[j].Data[0] & 0x0c) != 0) {
                            // 大臂运动 处理第2字节
                                rec[j].Data[2] = rec[j].Data[2] * k1 + 0xaf;
                            } else if ((rec[j].Data[0] & 0x03) != 0) {
                            // 铲斗运动 处理第1字节
                                rec[j].Data[1] = rec[j].Data[1] * k2 + 0xaa;
                            } else if ((rec[j].Data[0] & 0xc0) != 0) {
                            // 油门 处理第4字节
                                rec[j].Data[4] = rec[j].Data[4] * k3 + 0x55;
                            }
                            CanTransmit(rec[j]);
                        } else {
                            // 没有需要处理的数据
                            CanTransmit(rec[j]);  
                        }
                    } else if (rec[j].ID == 0x181) {
                        // 直接处理
                        rec[j].Data[1] = rec[j].Data[1] * k4 + 0x3f;
                        CanTransmit(rec[j]);
                    }
                }
            }       
        }
    }

    // 发送数据 只提供发送数据的能力
    void CanDevice::CanTransmit(VCI_CAN_OBJ& canobj) {
        // 发送数据 只提供发送
        if (VCI_Transmit(VCI_USBCAN2, 0, 0, this->obj, 1) == 1) {
            std::cout << "send success" << std::endl;
        } else {
            std::cout << "send again" << std::endl;
        }
    }

    int CanDevice::CanReset() {
        firststart = false;
        if (VCI_ResetCAN(VCI_USBCAN2, 0, 0) == 1) {
            std::cout << "重置CAN1口成功" << std::endl;
            return 1;
        } else {
            std::cout << "重置失败" << std::endl;
            return -1;
        }  
        if (VCI_ResetCAN(VCI_USBCAN2, 0, 1) == 1) {
            std::cout << "重置CAN2口成功" << std::endl;
            return 1;
        } else {
            std::cout << "重置失败" << std::endl;
            return -1;
        }  
    }
}
