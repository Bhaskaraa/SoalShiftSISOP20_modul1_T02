#!/bin/bash

for judul in $@
  do
    waktu=`date +%H -r $judul`
    judullama=`basename $judul .txt`
    waktubaru=`expr 26 - $waktu`
    judulbaru=`echo $judullama | caesar $waktubaru`
    mv $judul $judulbaru.txt
done
    
