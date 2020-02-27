# SoalShiftSISOP20_modul1_T02
Repository Sebagai Laporan Resmi Soal Shift Modul 1 Praktikum Sistem Operasi 2020\
Disusun oleh : I Gde Made Bhaskara Jala Dhananjaya (05311840000007) & Azmi (05311840000047)

## Soal 1
Whits adalah seorang mahasiswa teknik informatika. Dia mendapatkan tugas praktikum untuk membuat laporan berdasarkan data yang ada pada file “Sample-Superstore.tsv”. Namun dia tidak dapat menyelesaikan tugas tersebut. Laporan yang diminta berupa : \

***a.*** Tentukan wilayah Region yang memiliki keuntungan (profit) paling sedikit \
***b.*** Tampilkan 2 negara bagian (state) yang memiliki keuntungan (profit) paling sedikit berdasarkan hasil poin a \
***c.*** Tampilkan 10 produk (product name) yang memiliki keuntungan (profit) paling sedikit berdasarkan hasil poin b \

Whits memohon kepada kalian yang sudah jago mengolah data untuk mengerjakan laporan tersebut.

Pembahasan soal 1 File untuk penyelesaian soal ini ada disini : [source code](https://github.com/Bhaskaraa/SoalShiftSISOP20_modul1_T02/tree/master/Soal1)

Untuk menyelesaikan persoalan nomor 1, kami menggunakan syntax code sebagai berikut.
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
# 1a 
Untuk soal nomor 1a, ditandai dengan `echo "1 A - Region dengan profit paling kecil"`. Kemudian menggunakan `awk -F \\t` untuk blablabla. Kemudian `FNR>1` ***(For Number Rows)*** artinya baris yang dibaca adalah baris yang lebih dari baris pertama (2++). Kemudian `{array[$13]+=$21}` berfungsi untuk memasukan nilai yang ada dalam field 13 ***(field region)*** ke dalam array, lalu nilai yang ada field 21 di-***sum*** atau dijumlahkan semuanya. Kemudian `END{for(region in array)print array[region], region` berfungsi untuk menampilkan region yang ada dalam array beserta dengan jumlah profitnya masing-masing. `Sample-Superstore.tsv` adalah file yang merupakan ***source data***. `sort -g` digunakan untuk mengurutkan output dari yang terkecil dan dari atas. `awk -F " " '{print $2}'` berfungsi untuk memberi pemisah antara field berupa " " (spasi) dan yang di-***print*** hanya field kedua. Dan terakhir `head -n 1` berfungsi untuk menampilkan output baris 1 saja (paling atas).

# 1b
Soal nomor 1b ditandai dengan `echo "1 B - 2 Negara bagian dengan profit paling kecil"`. Sama seperti soal ***1a***, `awk -F \\t` digunakan untuk blablabla. Kemudian, `FNR>1{if($13=="Central")array[$11]+=$21}END{for(region in array)print array[region], region` artinya untuk untuk baris yang lebih dari baris pertama, jika field 13 ***(Region)*** merupakan ***Central***, field 11 dari Region Central dimasukin ke dalam array dan field 21 ***(profit)*** dijumlahkan. Output yang dihasilkan adalah data di field 11 ***(State)*** beserta profitnya masing-masing. `sort -g` untuk mengurutkan data dari yang terkecil. `awk -F " " '{print $2}'` berfungsi untuk memberi pemisah spasi diantara field output dan yang di-***print*** field ke 2 saja. `head -n 2` berfungsi untuk menampilkan 2 output teratas. sesuai dengan permintaan soal.

# 1c



 
