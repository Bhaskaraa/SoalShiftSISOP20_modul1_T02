#!/bin/bash

akhir=`ls | grep "pdkt_kusuma" | cut -d "_" -f 3 | sort -n | tail -1`

if [[ `ls | grep "kenangan"` != "kenangan" ]]
then
  mkdir ./kenangan
fi

if [[ `ls | grep "duplikasi"` != "duplikasi" ]]
then
  mkdir ./duplikasi
fi

arr=""

for ((i=1;i<=akhir;i++))
do
  loc="`cat wget.log | grep "Location:" | head -$i | tail -1 | cut -d " " -f 2`"
  Duplikasi=`echo -e $arr | awk -v loc=$loc 'BEGIN {Duplikasi=0} {if (loc==$0) Duplikasi=1} END {printf "%d", Duplikasi}'`
  
if [[ $Duplikasi == 1 ]]
  then
    mv pdkt_kusuma_$i ./duplikasi/duplikasi_$i
  else
    arr="$arr$loc\n"
    mv pdkt_kusuma_$i ./kenangan/kenangan_$i
  fi
done
