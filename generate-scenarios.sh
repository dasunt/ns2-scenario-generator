#!/bin/bash

echo "generating scenarios..."

for n in (10,20,30,40,50,60,70,80,90,100)
do

    for v in {1..1000}
    do
    echo "creating $v script for scenario $n"
    setdest -v 2 -n $n -s 1 -m 1 -M 50 -t 150 -P 1 -p 1 -x 3000 -y 3000 > ./scenario$n/$n-$v.tcl
    done

done
#ns aodv.tcl ./scenario10/10-1.tcl
