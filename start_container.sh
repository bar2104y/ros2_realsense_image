#!/bin/bash

xhost +local:docker
docker container start uav_nav
docker exec -it uav_nav bash