#
# Copyright 2019 Xilinx Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

CXX=${CXX:-g++}
name=$(basename $PWD)
$CXX -O2 -w\
  -fno-inline \
  -I. \
  -I/usr/include/xrt \
  -o $name \
  -std=c++17 \
  src/main.cc \
  src/common.cpp \
  -luuid \
  -lvart-runner \
  -lvart-util \
  -lvart-runner-assistant \
  -lxrt_core \
  -lopencv_videoio \
  -lopencv_imgcodecs \
  -lopencv_highgui \
  -lopencv_imgproc \
  -lopencv_core \
  -lpthread \
  -lxilinxopencl \
  -lglog \
  -lunilog \
  -lxir 

