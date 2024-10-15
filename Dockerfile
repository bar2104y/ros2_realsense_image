FROM osrf/ros:humble-desktop-full

COPY . /uav_nav_ws

WORKDIR /uav_nav_ws

RUN ./config.sh

CMD [ "bash" ]