#! /bin/bash
cd "$(dirname "$0")"
sudo apt update
which meson
which ninja
sudo apt install -y ninja-build meson
git clone https://github.com/cisco/openh264.git
cd openh264
git checkout v2.4.1
meson builddir
ninja -C builddir
meson test -C builddir -v
