#!/bin/bash
apt update
apt -y upgrade

apt install -y nano \
               gdb \
               gdbserver \
               python3-pip \
               wget \
               ros-humble-librealsense2* \
               ros-humble-realsense2-* \
               ros-humble-image-transport-plugins \
               ros-humble-perception-pcl \
               ros-humble-pcl-ros





source /opt/ros/humble/setup.bash
echo "source /opt/ros/humble/setup.bash" >> /root/.bashrc