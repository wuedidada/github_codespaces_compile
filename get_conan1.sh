#! /bin/bash
#! /bin/bash
pip3 install conan==1.62.0
sudo update
sudo apt-get install autoconf automake libtool curl make unzip -y
git clone https://github.com/conan-io/examples.git
cd examples/tutorial/consuming_packages/tool_requires
rm -rf build
mkdir build
cd build
conan install .. --output-folder=build --build=missing
cmake .. -DCMAKE_TOOLCHAIN_FILE=conan_toolchain.cmake -DCMAKE_BUILD_TYPE=Release
cmake --build .
./compressor
cd examples/example/conanfile/package_info/components
conan create .