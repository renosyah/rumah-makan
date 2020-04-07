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
$rm ->id = $_POST['id'];

// hasil akan didapat dari return
// fungsi delete dari object
$result = $rm->delete(get_connection("../config.ini"));

// lalu akan ditampilkan sebagai body response
// sebagai json
echo json_encode($result, JSON_PRETTY_PRINT | JSON_UNESCAPED_SLASHES);

?>