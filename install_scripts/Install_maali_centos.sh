
# This is will ensure that the following package managment installs will work!
sudo yum -y update
# add epel and PowerTools repos 
sudo yum configure-manager --set-enabled PowerTools
sudo yum -y install epel-release
sudo yum repolist
# install to allow x11 forwarding of gui interfaces
sudo yum -y install xorg-x11-xauth xorg-x11-apps 

# install nano xemacs emacs editors
sudo yum -y install nano vim
sudo yum -y install emacs emacs-common-26

# install tools that are needed for maali to work
sudo yum -y install bc wget make environment-modules

# install the default gnu compilers
# to find the the version number "gcc -v"
sudo yum -y install gcc gcc-gfortran gcc-c++ libgomp flex flex-devel git

sudo yum -y install libtar
sudo yum -y install libX11-devel libXt-devel
sudo yum -y install mesa-libGL-devel glx-utils
# install to build new versions of gcc
sudo yum -y install gmp-devel mpfr-devel libmpc-devel texinfo automake

# to install R 
sudo yum -y install zip unzip
sudo yum -y install readline-devel libcurl-devel 
sudo yum -y install pcre2-devel libxml2-devel
sudo yum -y install xz-devel cairo-devel zlib-devel bzip2-devel
sudo yum -y install libpng-devel libtiff-devel libjpeg-turbo-devel
# math libs for R on nimbus
sudo yum -y install atlas-devel 
# need to run make check for R
sudo yum -y install texlive-latex texlive-collection-fontsrecommended

if [ ! -d "/nectar" ]; then
  sudo mkdir /nectar
  sudo chown -R centos /nectar
fi 


