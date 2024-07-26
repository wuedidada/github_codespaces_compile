#!/bin/bash
cd "$(dirname "$0")"
sudo apt update
sudo apt-get install -y git g++ make libssl-dev libgflags-dev libprotobuf-dev libprotoc-dev protobuf-compiler libleveldb-dev
sudo apt-get install -y libsnappy-dev
git clone https://github.com/apache/brpc.git
cd brpc
git checkout 1.10.0
sh config_brpc.sh --headers=/usr/include --libs=/usr/lib
make -j4