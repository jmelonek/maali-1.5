#!/bin/bash
module load maali 

#  maali -t gcc -v 5.5.0 -c tata -w
  maali -t system-broadwell -v 1.0 -c tata -w
#  maali -t pixman -v 0.34.0 -c tata -w
  maali -t cairo -v 1.14.12 -c tata -w
  maali -t gnuplot -v 5.2.2 -c tata -w
  maali -t cmake -v 3.10.2 -c tata -w
  maali -t Python -v 3.6.5 -c tata -w
  maali -t CGAL -v 4.11.1 -c tata -w
  maali -t openmpi -v 2.1.3 -c tata -w
  maali -t qt -v 5.9.4 -c tata -w
  maali -t fftw -v 3.3.7 -c tata -w 
  maali -t boost -v 1.65.1 -c tata -w 
  maali -t OpenFOAM -v 1712 -c tata -w
