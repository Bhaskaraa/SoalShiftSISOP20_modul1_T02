#!/bin/bash

ngasal=`< /dev/urandom  tr -dc A-Za-z0-9 | fold -w 28 | head -n 1`

echo "Tulis Judul Filenya :"
read name
judul=`echo "$name" | tr -dc A-Za-z`
echo "$ngasal" >> $judul.txt
