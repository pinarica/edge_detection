#!/bin/bash

module load GCCcore/9.3.0
module load libpng/1.6.37

make clean
make

mkdir -p optimized_times

echo "" > time_earth.txt
for n in {1..10};
do
    echo $n
    # { time $1 ; } 2>> time.txt
    # { time ./process ./images/earth.png earth_s.png ;} 2>> time.txt
    { time make earth ;} 2>> time_earth.txt
done
avtime=`cat time_earth.txt | grep real | cut -d "m" -f 2 | cut -d "s" -f1 | jq -s add/length`

echo ""
echo ""
echo "The average time after $n runs is $avtime"
echo "" >> time_earth.txt
echo "The average time after $n runs is $avtime" >> time_earth.txt
mv time_earth.txt optimized_times


echo "" > time_sparty.txt
for n in {1..10};
do
    echo $n
    # { time $1 ; } 2>> time.txt
    # { time ./process ./images/earth.png earth_s.png ;} 2>> time.txt
    { time make sparty ;} 2>> time_sparty.txt
done
avtime=`cat time_sparty.txt | grep real | cut -d "m" -f 2 | cut -d "s" -f1 | jq -s add/length`

echo ""
echo ""
echo "The average time after $n runs is $avtime"
echo "" >> time_sparty.txt
echo "The average time after $n runs is $avtime" >> time_sparty.txt
mv time_sparty.txt optimized_times

echo "" > time_msustadium.txt
for n in {1..10};
do
    echo $n
    # { time $1 ; } 2>> time.txt
    # { time ./process ./images/earth.png earth_s.png ;} 2>> time.txt
    { time make msustadium ;} 2>> time_msustadium.txt
done
avtime=`cat time_msustadium.txt | grep real | cut -d "m" -f 2 | cut -d "s" -f1 | jq -s add/length`

echo ""
echo ""
echo "The average time after $n runs is $avtime"
echo "" >> time_msustadium.txt
echo "The average time after $n runs is $avtime" >> time_msustadium.txt
mv time_msustadium.txt optimized_times

