# SoalShiftSISOP20_modul1_T02
Repository Soal Shift Modul 1 Praktikum Sistem Operasi 2020\
Disusun oleh : I Gde Made Bhaskara Jala Dhananjaya (05311840000007) & Azmi (05311840000047)

*Soal 1
Whits adalah seorang mahasiswa teknik informatika. Dia mendapatkan tugas praktikum untuk membuat laporan berdasarkan data yang ada pada file “Sample-Superstore.tsv”. Namun dia tidak dapat menyelesaikan tugas tersebut. Laporan yang diminta berupa :
***a.*** Tentukan wilayah bagian (region) mana yang memiliki keuntungan (profit) paling sedikit
***b.*** Tampilkan 2 negara bagian (state) yang memiliki keuntungan (profit) paling sedikit berdasarkan hasil poin a
***c.*** Tampilkan 10 produk (product name) yang memiliki keuntungan (profit) paling sedikit berdasarkan 2 negara bagian (state) hasil poin b

Whits memohon kepada kalian yang sudah jago mengolah data untuk mengerjakan laporan tersebut.

Pembahasan soal 1 File untuk penyelesaian soal ini ada disini : [source code](https://github.com/Bhaskaraa/SoalShiftSISOP20_modul1_T02/tree/master/Soal1)

untuk soal nomor 1 kami menggunakan awk sebagai berikut.

***1a*** untuk menentukan wilayah bagian (region) dengan profit paling sedikit kami menggunakan syntax sebagai berikut
```
#!/bin/bash

echo "1 A - Region dengan profit paling kecil"
awk -F \\t 'FNR>1{array[$13]+=$21}END{for(region in array)print array[region], region}' Sample-Superstore.tsv | sort -g | awk -F " " '{print $2}' | head -n 1
echo "---------------------------------------------------------------------"
echo "1 B - 2 Negara bagian dengan profit paling kecil"
awk -F \\t 'FNR>1{if($13=="Central")array[$11]+=$21}END{for(region in array)print array[region], region}' Sample-Superstore.tsv | sort -g | awk -F " " '{print $2}' | head -n 2
echo "---------------------------------------------------------------------"
echo "1 C - 10 Produk dengan profit paling kecil"
awk -F \\t 'FNR>1{if($11=="Texas" || $11=="Illinois")array[$17]+=$21}END{for(region in array)print array[region], region}' Sample-Superstore.tsv | sort -g | head -n 10


```
pada baris pertama bagian `echo "1 A - Region dengan profit paling kecil"` maksudnya adalah bla bla
