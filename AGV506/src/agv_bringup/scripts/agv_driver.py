#! /usr/bin/env python
# encoding: utf-8

import sys
#sys.path.append("/home/jetson/Transbot/transbot")
#sys.path.append("/home/yahboom/py_install-V3.2.3/py_install")
sys.path.append("/home/yahboom/py_install-V3.2.5/py_install")
import rospy
import random
import threading
from math import pi
from time import sleep
from agv_msgs.msg import *
from agv_msgs.srv import *
from sensor_msgs.msg import Imu
# from Transbot_Lib import Transbot
from geometry_msgs.msg import Twist
from sensor_msgs.msg import Imu
from dynamic_reconfigure.server import Server
# from transbot_bringup.cfg import PIDparamConfig
from std_msgs.msg import Int32
"""
    需求：
        1、完成与下位机的can通讯
        2、处理接收的话题和服务
        3、发布下位机返回的消息和参数
"""
class agv_driver:
    def __init__(self) -> None:
        rospy.on_shutdown(self.concel)
        


if __name__ == '__main__':
    rospy.init_node("driver_node", anonymous=False)
    try:
        driver = agv_driver()
        driver.pub_data()
        rospy.spin()
    except:
        rospy.loginfo("Final!!!")