#/bin/bash 

module load maali 

maali -t system-gcc -v 9.3.0 -c $1 -w 

maali -t R -v 4.0.5 -c $1 -w 

