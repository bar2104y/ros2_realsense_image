#!/bin/bash

cd /
mkdir downloads
cd /downloads

# Установка quill
git clone https://github.com/odygrd/quill.git
cd quill
git checkout tags/v5.1.0

mkdir cmake_build
cd cmake_build
cmake ..
make install