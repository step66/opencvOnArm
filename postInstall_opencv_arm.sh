#This is JTK's post install script for opencv on AARCH64 
#Set the required permissions first by doing: chmod 0755 postInstall_opencv_arm.sh 
#Run this script with: ./postInstall_opencv_arm.sh

echo "Running script ........."
sudo apt-get install gcc-arm-linux-gnueabi gcc-arm-linux-gnueabihf pkg-config libavcodec-dev libavformat-dev libswscale-dev libjpeg-dev libpng-dev libtiff-dev libjasper-dev
cd ~
git clone https://github.com/opencv/opencv.git
cd ~/opencv/platforms/linux
mkdir -p build_hardfp
cd build_hardfp
cmake -DCMAKE_TOOLCHAIN_FILE=../arm-gnueabi.toolchain.cmake ../../..
make
