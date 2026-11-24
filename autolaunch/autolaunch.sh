#!/bin/bash

while true; do
  # 启动用于控制 Pointfoot 机器人的 Python 控制器脚本
  # 参数 10.192.1.2 表示机器人所在的 IP 地址
  # 该行被注释掉，若要启用自动控制器启动，请取消注释
  # 请根据您控制器脚本的实际路径修改此路径
  export ROBOT_TYPE=WF_TRON1A
  export RL_TYPE=isaacgym
  python3 /home/guest/rl-deploy-with-python/main.py 10.192.1.2

  # 使用 roslaunch 启动机器人控制算法
  # 若要启动机器人控制算法，请取消下面注释
  # 请根据您安装的实际路径修改路径
  # source /home/guest/install/setup.bash
  # roslaunch robot_hw pointfoot_hw.launch

  # 等待 3 秒后重新启动
  sleep 3
done

