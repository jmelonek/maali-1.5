#!/bin/bash

# update your current image from the default repo
# This is will ensure that the remaining package management installs will work!
sudo apt-get -y update

#sudo apt-get -y upgrade

# install to allow x11 fowarding of gui interfaces
sudo apt-get -y install xauth x11-apps libxt-dev

sudo apt-get -y install nano 

# install tools that are needed for maali to work
sudo apt-get -y install bc wget make environment-modules libtool rpm

# install the default gnu compilers
# to find the the version number "gcc -v"
sudo apt-get -y install gfortran g++

# install libncurses-dev to support ccmake
sudo apt-get -y install libncurses-dev libcairo2-dev

# install libpython3.8-dev for python module in silo
sudo apt-get -y install libpython3.8-dev

# install libcurl and libpcre for R
sudo apt-get -y install libcurl4-gnutls-dev libpcre2-dev
sudo apt-get -y install libpng-dev zlib-dev libjpeg-turbo8-dev
sudo apt-get -y install libreadline-dev libbz2-dev liblzma-dev

if [ ! -d "/nimbus" ]; then
  sudo mkdir /nimbus
  sudo chown -R ubuntu /nimbus
fi
