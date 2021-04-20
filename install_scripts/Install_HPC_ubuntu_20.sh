#!/bin/bash
#  Author: Chris Bording - HPC Manager @ The University of Western Australia
#  08 July 2020
#
#  Script to install software necessary to run gadget2
#  GADGET is a freely available code for cosmological N-body/SPH simulations
# on massively parallel computers with distributed memory. GADGET uses an
# explicit communication model that is implemented with the standardized MPI
# communication interface. The code can be run on essentially all supercomputer
# systems presently in use, including clusters of workstations or
# individual PCs.

# once maali is installed
module load maali
# all code is install using gcc/g++/gfortran version 7.4.0 the default
# version with ubuntu 18.04 LTS.
CONFIG_FILE=vagrant
# install systemgcc
<<<<<<< HEAD
maali -t system-gcc -v 7.5.0 -c ${CONFIG_FILE}
=======
maali -t system-gcc -v 9.3.0 -c ${CONFIG_FILE}
>>>>>>> 0190148f485910d6618123b99e855d9ef6069ae1
# install cmake 3.14.5
maali -t cmake -v 3.14.5 -c ${CONFIG_FILE}
# install zlib 1.2.11
maali -t zlib -v 1.2.11 -c ${CONFIG_FILE}
# install szip 2.1.1
maali -t szip -v 2.1.1 -c ${CONFIG_FILE}
# install openmpi 4.0.0
<<<<<<< HEAD
maali -t openmpi -v 4.0.0 -c ${CONFIG_FILE}
=======
maali -t openmpi -v 4.0.5 -c ${CONFIG_FILE}
>>>>>>> 0190148f485910d6618123b99e855d9ef6069ae1
# install fftw 3.3.8
maali -t fftw-parallel -v 2.1.5 -c ${CONFIG_FILE}
# install hdf5 1.12.0
maali -t hdf5 -v 1.12.0 -c ${CONFIG_FILE}

cd

cat >> $HOME/.bashrc <<- EOF
  module load gcc openmpi
EOF

#wget https://wwwmpa.mpa-garching.mpg.de/gadget/gadget-2.0.7.tar.gz
#tar -xzf gadget-2.0.7.tar.gz
#cd Gadget-2.0.7/Gadget2
#cp ~/scripts/Makefile .
#make
