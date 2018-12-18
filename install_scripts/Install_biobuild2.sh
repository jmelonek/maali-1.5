#!/bin/bash

module load maali 
module load gnu/5.4.0

# 
maali -t samtools -v 1.9.0 -c $1
maali -t sparsehash -v 2.0.3 -c $1
# abyss is an mpi code that uses sparsehash and builds a local version of boost!
maali -t abyss -v 2.1.4 -c $1 

maali -t bamkit -v 17.04.13 -c $1
maali -t bamstats -v 1.2.5 -c $1
maali -t bamtools -v 2.5.1 -c $1
# note bcf tools requires samtools
maali -t bcftools -v 1.9.0 -c $1
maali -t beast -v 1.10.4  -c $1 
maali -t bedtools -v 2.27.0 -c $1

maali -t bioperl -v 1.72 -c $1

