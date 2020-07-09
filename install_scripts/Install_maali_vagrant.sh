#!/bin/bash

# update your current image from the default repo
# This is will ensure that the remaining package management installs will work!
sudo apt-get -y update

#sudo apt-get -y upgrade

# install to allow x11 fowarding of gui interfaces
sudo apt-get -y install xauth x11-apps libxt-dev

# install nano xemacs emacs editors
#sudo apt-get -y install nano xemacs21 xemacs21-bin xemacs21-supportel xemacs21-basesupport-el

sudo apt-get -y install nano emacs emacs25 emacs25-common emacs-goodies-el

# install tools that are needed for maali to work
sudo apt-get -y install bc wget make environment-modules libtool

# install the default gnu compilers
# to find the the version number "gcc -v"
sudo apt-get -y install gfortran g++

# install libncurses-dev to support ccmake
sudo apt-get -y install libncurses-dev

# install libpython3.6-dev for python module in silo
sudo apt-get -y install libpython3.6-dev

if [ ! -d "/nimbus" ]; then
  sudo mkdir /nimbus
  sudo chown -R vagrant /nimbus
fi
