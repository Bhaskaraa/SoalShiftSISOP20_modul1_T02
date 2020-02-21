#!/bin/bash

echo "1 A - Region dengan profit paling kecil"
awk -F \\t 'FNR>1{array[$13]+=$21}END{for(region in array)print array[region], region}' Sample-Superstore.tsv | sort -g | awk -F " " '{print $2}' | head -n 1
echo "---------------------------------------------------------------------"
echo "1 B - 2 Negara bagian dengan profit paling kecil"
awk -F \\t 'FNR>1{if($13=="Central")array[$11]+=$21}END{for(region in array)print array[region], region}' Sample-Superstore.tsv | sort -g | awk -F " " '{print $2}' | head -n 2
echo "---------------------------------------------------------------------"
echo "1 C - 10 Produk dengan profit paling kecil"
awk -F \\t 'FNR>1{if($11=="Texas" || $11=="Illinois")array[$17]+=$21}END{for(region in array)print array[region], region}' Sample-Superstore.tsv | sort -g | head -n 10

