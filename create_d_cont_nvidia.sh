#!/bin/bash

xhost +local:docker

docker rm -f uav_nav_test
docker run --privileged \
            --net=host \
            -e DISPLAY=$DISPLAY \
            -e NVIDIA_VISIBLE_DEVICES=all \
            -e NVIDIA_DRIVER_CAPABILITIES=all \
            --gpus all \
            --runtime nvidia \
            -v /dev/dri:/dev/dri \
            -v /tmp/.X11-unix:/tmp/.X11-unix \
            -v /dev/input:/dev/input \
            -v $(pwd):/uav_nav_ws \
            -it \
            --name uav_nav_test \
            ybarichev/my_uav:pure