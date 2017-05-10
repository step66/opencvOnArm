#!/bin/bash -x
# This script installs opencv 3.1.0 onto an x64 device
# Taken from http://www.pyimagesearch.com/2015/06/22/install-opencv-3-0-and-python-2-7-on-ubuntu/
# Change permissions first with: chmod 0755 opencv-on-x64.sh
# Then run with: ./opencv-on-x64.sh

sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get install build-essential cmake git pkg-config libjpeg8-dev libtiff5-dev libjasper-dev libpng12-dev libgtk2.0-dev libavcodec-dev libavformat-dev libswscale-dev libv4l-dev libatlas-base-dev gfortran -y

#Set up pip and venv
wget https://bootstrap.pypa.io/get-pip.py
sudo python get-pip.py
sudo pip install virtualenv virtualenvwrapper
sudo rm -rf ~/.cache/pip

echo -e "\n# virtualenv and virtualenvwrapper" >> ~/.bashrc
echo "export WORKON_HOME=$HOME/.virtualenvs" >> ~/.bashrc
echo "source /usr/local/bin/virtualenvwrapper.sh" >> ~/.bashrc
source ~/.bashrc
mkvirtualenv cv 
workon cv

pip install numpy

#cd ~
#git clone https://github.com/Itseez/opencv.git
#cd opencv
#git checkout 3.0.0

#cd ~
#git clone https://github.com/Itseez/opencv_contrib.git
#cd opencv_contrib
#git checkout 3.0.0

#cd ~/opencv
#mkdir build
#cd build
#cmake -D CMAKE_BUILD_TYPE=RELEASE \
#  -D CMAKE_INSTALL_PREFIX=/usr/local ..

#make 

#sudo make install
#sudo ldconfig
#stuck
#ls -l /usr/local/lib/python2.7/site-packages/

#cd ~/.virtualenvs/cv/lib/python2.7/site-packages/
#ln -s /usr/local/lib/python2.7/site-packages/cv2.so cv2.so

#workon cv
#python
