<?php

// fungsi header ini adalah untuk menentukan konten
// yg akan ditampilkan oleh body
header("Content-Type: application/json; charset=UTF-8");

// menggabungkan kode dari file rumah_makan.php
// yg mana model kota dibutuhkan
// untuk query
include("../model/rumah_makan.php");

// menggabungkan kode dari file db.php
// yg mana db digunakan untuk memanggil koneksi
// ke database
include("../model/db.php");

// membuat object kt dari model rumah_makan
$rm = new rumah_makan();

// set variabel id dari form
$rm ->kota_id= $_POST['kota_id'];

// set variabel nama dari form
$rm ->nama = $_POST['nama'];

// set variabel url_menu dari form
$rm ->url_menu = $_POST['url_menu'];

// set variabel alamat dari form
$rm ->alamat = $_POST['alamat'];

// set variabel deskripsi dari form
$rm ->deskripsi = $_POST['deskripsi'];

// set variabel latitude dari form
$rm ->latitude = $_POST['latitude'];

// set variabel longitude dari form
$rm ->longitude = $_POST['longitude'];

// set variabel url_gambar dari form
$rm ->url_gambar = $_POST['url_gambar'];

// hasil akan didapat dari return
// fungsi add dari object
$result = $rm->add(get_connection("../config.ini"));

// lalu akan ditampilkan sebagai body response
// sebagai json
echo json_encode($result, JSON_PRETTY_PRINT | JSON_UNESCAPED_SLASHES);

?>