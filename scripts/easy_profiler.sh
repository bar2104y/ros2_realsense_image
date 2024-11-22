#!/bin/bash

cd /
mkdir downloads
cd /downloads

git clone https://github.com/yse/easy_profiler.git
cd easy_profiler
mkdir build
cd build
cmake -DCMAKE_BUILD_TYPE="Release" ..
make install