#!/bin/bash
#  Author: Chris Bording - HPC Manager @ The University of Western Australia
#  25 March 2020
#
#  Script to install software necessary to run SWarp and SExtractor as part 
#  of the PHYS3003 class

# once maali is installed
module load maali
# all code is installed using gcc/g++/gfortran version 7.4.0 the default
# version with ubuntu 18.04 LTS.
CONFIG_FILE=vagrant
# install systemgcc
maali -t system-gcc -v 7.5.0 -c ${CONFIG_FILE}
# install zlib 1.2.11
maali -t zlib -v 1.2.11 -c ${CONFIG_FILE}
# install szip 2.1.1
maali -t szip -v 2.1.1 -c ${CONFIG_FILE}
# install fftw 3.3.8
maali -t fftw -v 3.3.8 -c ${CONFIG_FILE}
# install swarp 2.38.0
maali -t swarp -v 2.38.0 -c ${CONFIG_FILE}
# install SExtractor 2.19.5
maali -t sextractor -v 2.19.5 -c ${CONFIG_FILE}

echo " module load gcc/7.5.0 swarp/2.38.0 sextractor/2.19.5 " >> ~/.bashrc

