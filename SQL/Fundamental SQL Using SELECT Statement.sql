/*
CHAPTER 3 : Penggunaan Perintah SELECT… FROM…
*/


/* Mengambil Seluruh Kolom dalam suatu Tabel*/

SELECT * FROM ms_produk;

/* Mengambil Satu Kolom dari Tabel 
SELECT nama_kolom FROM nama_tabel;
*/

SELECT nama_produk FROM ms_produk;
SELECT harga FROM ms_produk;

/* Mengambil Lebih dari Satu Kolom dari Tabel
SELECT nama_kolom1, nama_kolom2 FROM nama_tabel;
*/

SELECT kode_produk, nama_produk FROM ms_produk;
SELECT nama_produk, harga FROM ms_produk;
SELECT kode_produk, harga FROM ms_produk;

/* Membatasi Pengambilan Jumlah Row Data
SELECT nama_kolom FROM nama_tabel LIMIT n;
*/

SELECT nama_produk FROM ms_produk LIMIT 3;
SELECT nama_produk, harga FROM ms_produk LIMIT 5;
SELECT * FROM ms_produk LIMIT 4;

/* Penggunaan SELECT DISTINCT statement
SELECT DISTINCT nama_kolom1, nama_kolom2, ... FROM nama_tabel;
*/

SELECT DISTINCT nama_customer, alamat FROM ms_pelanggan;


/* 
CHAPTER 4 : Prefix dan Alias 
*/


/* Menggunakan Prefix pada Nama Kolom
SELECT nama_tabel.nama_kolom FROM nama_tabel; 
*/

SELECT ms_produk.nama_produk FROM ms_produk;
SELECT ms_produk.kode_produk FROM ms_produk;
SELECT ms_produk.* FROM ms_produk;

/* Menggunakan Alias pada Kolom
SELECT nama_kolom AS nama_kolom_baru FROM nama_tabel;
*/

SELECT kode_produk AS product_code FROM ms_produk;
SELECT no_urut AS nomor, nama_produk AS nama FROM ms_produk;
SELECT kode_produk AS kode FROM ms_produk;
SELECT kode_produk AS kode, nama_produk AS nama FROM ms_produk;

/* Menghilangkan Keyword 'AS'
SELECT nama_kolom nama_kolom_baru FROM nama_tabel;
*/

SELECT kode_produk product_code FROM ms_produk;
SELECT no_urut nomor, nama_produk nama FROM ms_produk;

/* Menggabungkan Prefix dan Alias
SELECT nama_tabel.nama_kolom AS nama_kolom_baru  FROM nama_tabel;
*/

SELECT ms_produk.nama_produk AS nama FROM ms_produk;
SELECT ms_produk.harga AS harga_jual FROM ms_produk;

/* Menggunakan Alias pada Tabel
SELECT nama_kolom FROM nama_tabel AS nama_tabel_baru;
*/

SELECT * FROM ms_produk AS t1;
SELECT * FROM ms_produk t2;

/* Prefix dengan Alias Tabel
SELECT tbl.nama_kolom FROM nama_tabel AS tbl;
*/

SELECT t1.kode_produk, t1.nama_produk FROM ms_produk AS t1;
SELECT t1.kode_produk AS product_code, t1.nama_produk AS product_name FROM ms_produk AS t1;
SELECT t2.nama_produk, t2.harga FROM ms_produk t2;
SELECT a1.kode_produk kode, a1.nama_produk AS nama FROM ms_produk a1;


/*
CHAPTER 5 : Menggunakan Filter
*/


/* Menggunakan WHERE
SELECT nama_kolom FROM nama_tabel WHERE kondisi;
*/

SELECT * FROM ms_produk WHERE nama_produk='Gantungan Kunci DQLab';
SELECT * FROM ms_produk WHERE nama_produk='Tas Travel Organizer DQLab';

/* Menggunakan Operand OR
SELECT nama_kolom FROM nama_tabel WHERE kondisi1 OR kondisi2;
*/

SELECT * FROM ms_produk WHERE nama_produk = 'Gantungan Kunci DQLab' OR nama_produk = 'Tas Travel Organizer DQLab';
SELECT * FROM ms_produk WHERE nama_produk = 'Gantungan Kunci DQLab' OR nama_produk = 'Tas Travel Organizer DQLab' OR nama_produk = 'Flashdisk DQLab 64 GB';

/* Filter untuk Angka */

SELECT * FROM ms_produk WHERE harga < 50000;
SELECT * FROM ms_produk WHERE harga > 50000;

/* Menggunakan Operand AND
SELECT nama_kolom FROM nama_tabel WHERE kondisi1 AND kondisi2;
*/

SELECT * FROM ms_produk WHERE nama_produk = 'Gantungan Kunci DQLab' AND harga > 50000;
SELECT * FROM ms_produk WHERE nama_produk = 'Gantungan Kunci DQLab' AND harga < 50000;
SELECT * FROM ms_produk WHERE harga > 50000 OR harga < 50000;


/*
CHAPTER 6 : Mini Project
*/


/* Proyek dari Cabang A */

SELECT kode_pelanggan AS 'kode pelanggan', nama_produk AS 'nama produk', qty, harga, qty*harga AS total 
FROM tr_penjualan WHERE qty*harga >= 100000 ORDER BY total DESC;