#!/bin/bash/

banyakfile=`ls | grep "pdkt_kusuma" | cut -d '_' -f 3 | sort -n | tail -1`
if [[ $banyakfile =~ [^0-9] ]] 
  then
  banyakfile=0
fi

awal=`expr $banyakfile + 1`
akhir=`expr $banyakfile + 28`

for ((i=awal;i<=akhir;i++))
do
  wget -O "pdkt_kusuma_$i" -a wget.log "https://loremflickr.com/320/240/cat"
done

grep "Location" wget.log >> location.log
