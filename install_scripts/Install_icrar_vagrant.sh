#!/bin/bash

# update your current image from the default repo
# This is will ensure that the remaining package management installs will work!
sudo apt-get -y update

sudo apt-get -y upgrade

# install to allow x11 fowarding of gui interfaces
sudo apt-get -y install xauth x11-apps libxt-dev

# install nano xemacs emacs editors
sudo apt-get -y install nano 

# install tools that are needed for maali to work
sudo apt-get -y install bc wget make environment-modules libtool

# install the default gnu compilers
# to find the the version number "gcc -v"
sudo apt-get -y install gfortran g++

# install libncurses-dev to support ccmake
sudo apt-get -y install libncurses-dev

# install libatlas for SExtractor 
sudo apt-get -y install libatlas-base-dev

# install pgplot5 for wsclib
sudo apt-get -y install pgplot5 libcfitsio-dev

# install readline-dev for miriad
sudo apt-get -y install libreadline-dev

# install libpython3.6-dev for python module in silo
sudo apt-get -y install libpython3.6-dev zip

# install topcat need java
sudo apt-get -y install default-jdk

# install SOAImageDS9  need
sudo apt-get -y install zlib1g-dev libxml2-dev libxslt1-dev 
if [ ! -d "/icrar" ]; then
  sudo mkdir /icrar
  sudo chown -R vagrant /icrar
fi
