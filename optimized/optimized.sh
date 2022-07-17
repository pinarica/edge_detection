#!/bin/bash

#
module load GCCcore/9.3.0
#
module load libpng/1.6.37

make clean
make

mkdir -p serial_time

echo "" > time.txt
for n in {1..3};
do 
    echo $n
    # { time $1 ; } 2>> time.txt
    # { time ./process ./images/earth.png earth_s.png ;} 2>> time.txt
    { time make earth ;} 2>> time.txt
done
avtime=`cat time.txt | grep real | cut -d "m" -f 2 | cut -d "s" -f1 | jq -s add/length`

echo ""
echo ""
echo "The average time after $n runs is $avtime"

