#!/bin/bash

xhost +local:docker

docker rm -f uav_nav
docker run --device=/dev/dri:/dev/dri \
            -e DISPLAY=unix:0 \
            -v /tmp/.X11-unix:/tmp/.X11-unix \
            -v /dev/input:/dev/input \
            --device-cgroup-rule='c 13:* rmw' \
            -v $(pwd):/uav_nav_ws \
            -it \
            --name uav_nav \
            uav_nav