#!/bin/bash

docker build -t my-ros-humble:pure -f ./dockerfiles/Dockerfile_pure .
docker build -t my-ros-humble:quill5 -f ./dockerfiles/Dockerfile_quill5 .
docker build -t my-ros-humble:easy_profiler -f ./dockerfiles/Dockerfile_easy_profiler .
docker build -t my-ros-humble:debug -f ./dockerfiles/Dockerfile_debug .
