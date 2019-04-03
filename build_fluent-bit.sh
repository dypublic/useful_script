cat /etc/*release
sudo yum install gcc -y
sudo yum install gcc-c++ -y
yum info cmake

#In order to install version 3.6.2 or newer version, first uninstall it with yum remove
sudo yum remove cmake -y
#If you don't perform the above step to remove old CMake version, you may see below error after the final step that you installed the newer CMake version.
#CMake has most likely not been installed correctly

#Download, extrace, compile and install the code cmake-3.14.1.tar.gz from https://cmake.org/download/
wget https://github.com/Kitware/CMake/releases/download/v3.14.1/cmake-3.14.1.tar.gz
tar -zxvf cmake-3.14.1.tar.gz
cd cmake-3.14.1
sudo ./bootstrap --prefix=/usr/local
sudo make
sudo make install
sudo ln -s /usr/local/bin/cmake /usr/bin/cmake
sudo ln -s /usr/local/bin/ctest /usr/bin/ctest
sudo ln -s /usr/local/bin/cpack /usr/bin/cpack

cmake --version

wget https://fluentbit.io/releases/1.0/fluent-bit-1.0.6.tar.gz
tar -xzvf fluent-bit-1.0.6.tar.gz 
cd fluent-bit-1.0.6
cmake ../
