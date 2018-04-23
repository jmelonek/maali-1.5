mage from the repo 
# This is will ensure that the following package managment installs will work!
sudo yum -y update

# install to allow x11 forwarding of gui interfaces
sudo yum -y install xorg-x11-xauth xorg-x11-apps 

# install nano xemacs emacs editors
sudo yum -y install nano vim
sudo yum -y install emacs emacs-common emacs-goodies-el 

# install tools that are needed for maali to work
sudo yum -y install bc wget make environment-modules

# install the default gnu compilers
# to find the the version number "gcc -v"
sudo yum -y install gcc gcc-gfortran gcc-c++ libgomp flex flex-devel

sudo yum -y install libtar libtar-devel bzip2 bzip2-devel mesa-libGL
sudo yum -y install libX11-devel zlib zlib-devel libpng libpng-devel
sudo yum -y install libXt libXt-devel
sudo yum -y install mesa-libGL-devel libjpeg-turbo libjpeg-turbo-devel glx-utils
# install to build new versions of gcc
sudo yum -y install gmp-devel mpfr-devel libmpc-devel texinfo automake


if [ ! -d "/nectar" ]; then
  sudo mkdir /nectar
  sudo chown -R centos /nectar
fi 


