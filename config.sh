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


# Установка quill
mkdir /downloads
cd /downloads
git clone https://github.com/odygrd/quill.git
cd quill
git checkout tags/v5.1.0

mkdir cmake_build
cd cmake_build
cmake ..
make install

cd /downloads
git clone https://github.com/yse/easy_profiler.git
cd easy_profiler
mkdir build
cd build
cmake -DCMAKE_BUILD_TYPE="Release" ..
make install


source /opt/ros/humble/setup.bash
echo "source /opt/ros/humble/setup.bash" >> /root/.bashrc
echo "source /uav_nav_ws/install/setup.bash" >> /root/.bashrc
mkdir -p /root/.config/jstest-gtk