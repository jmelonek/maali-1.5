#!/bin/bash

module load maali 
module load gnu/5.4.0


maali -t cython -v 0.29.1 -c $1
maali -t 
# need java/8u191 for beagle-lib/3.1.1 and both for beast2 2.5.1
#maali -t java -v 8u191 - c $1
#maali -t beagle-lib/3.1.1
# LJ and Ritesh package requests

#maali -t Stringtie -v 1.3.5 -c $1 
maali -t Prodigal -v 2.6.3 -c $1
maali -t beast -v 2.5.1 -c $1

#maali -t megahit -v 1.4 -c $1

# CONCOCT can use python 2.7 or 3 has a number of dependecies gsl/gslcblas gomp
# apt-get install build-essential libgsl0-dev libgomp1 
#maali -t gsl -v 2.5 -c $1
#maali -t cython -v 0.29.1 -c $1
#maali -t numpy -v 1.15.4 -c $1
#maali -t scipy -v 1.1.0 -c $1
#maali -t pandas -v 0.23.2 -c $1
#maali -t biopython -v 1.71 -c $1
#maali -t scikit-learn -v 0.20.1 -c $1
#maali -t CONCOCT -v 1.0.0 -c $1

# metamos has a number of dependencies
# maali -t r -v 3.5.1 -c $1
# maali -t cython -v 0.29.1 -c $1 
# maali -t matplotlib -v 1.3.0 -c $1
# maali -t numpy -v 1.15.4 -c $1
# maali -t psutil -v 0.6.1 -c $1
# maali -t pysam -v 0.15.1 -c $1
# maali -t jellyfish -v 1.1.12 -c $1
# maali -t jellyfish -v 2.2.10 -c $1
# maali -t metAMOS -v 1.5rc3 -c $1 
