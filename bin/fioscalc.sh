#!/bin/bash
#This calculator takes in the SSID and an optional MAC to calculate the wep key of a FIOS AP.
ESSID=`echo -n $1 | tr [A-Z] [a-z]`
#set -vx
len=`echo $ESSID | wc -c`
len=`expr $len - 1`
rev=""
while test $len -gt 0
do
rev1=`echo $ESSID | cut -c$len`
rev=$rev$rev1
len=`expr $len - 1`
done
ESSID=$rev
MAC=$2
if [ $# -eq 1 ]; then
#CALCWEP
PART=`echo "obase=16; $(( 36#$ESSID ))" | bc`
#PART=`printf "%06x" 0x$PART ` #you may need this if you are in linux
echo 1801$PART
echo 1f90$PART
elif [ $# -eq 2 ]; then
PART=`echo "obase=16; $(( 36#$ESSID ))" | bc`
PART=`printf "%06x" 0x$PART `
FIRST=`echo $MAC | tr -d : | tr -d "-" | tr -d [:space:] | cut -c 1-4 | tr [a-z] [A-Z]`
echo $FIRST$PART
else
echo 'Usage: fioscalc.sh ESSID [MAC]'
fi
