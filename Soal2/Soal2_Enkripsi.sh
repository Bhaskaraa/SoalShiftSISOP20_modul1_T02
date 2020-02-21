#!/bin/bash

for namafile in $@
  do
    waktu=`date +%H -r $namafile`
    namafilelama=`basename $namafile .txt`

    namafilebaru=`echo $namafilelama | caesar $waktu`
    mv $namafile $namafilebaru.txt
  done
