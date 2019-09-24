#!/bin/bash

# update your current image from the default repo 
# This is will ensure that the remaining package management installs will work!
sudo apt-get -y update

sudo apt-get -y upgrade

# install to allow x11 fowarding of gui interfaces
sudo apt-get -y install xauth x11-apps libxt-dev 

# install nano xemacs emacs editors
sudo apt-get -y install nano xemacs21 xemacs21-bin xemacs21-supportel xemacs21-basesupport-el

sudo apt-get -y install emacs emacs24 emacs24-common emacs-goodies-el 

# install tools that are needed for maali to work
sudo apt-get -y install bc wget make environment-modules libtool

# install the default gnu compilers
# to find the the version number "gcc -v"
sudo apt-get -y install build-essential
sudo apt-get -y install bison flex 
sudo apt-get -y install perl python python3 
sudo apt-get -y install qt5-default libqt5opengl5-dev 
sudo apt-get -y install tcl-dev tk-dev libxml2-dev
sudo apt-get -y install zlib1g-dev default-jre doxygen
sudo apt-get -y install graphviz libwebkitgtk-1.0
sudo apt-get -y install gfortran

# firefox and tcl to install MATLAB
sudo apt-get -y install firefox 

# pkgs need to install omnet-5.2.1
sudo apt-get -y install libboost-all-dev
wget http://eclipse.bluemix.net/packages/2019-03/data/eclipse-inst-linux64.tar.gz


if [ ! -d "/nectar" ]; then
  sudo mkdir /nectar  
  sudo chown -R ubuntu /nectar
fi
 
