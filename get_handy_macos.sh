#!/bin/bash
cd "$(dirname "$0")"
git clone https://github.com/yedf2/handy.git
cd handy
make && sudo make install