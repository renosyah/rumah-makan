<?php

// fungsi header ini adalah untuk menentukan konten
// yg akan ditampilkan oleh body
header("Content-Type: application/json; charset=UTF-8");

// menggabungkan kode dari file kota.php
// yg mana model kota dibutuhkan
// untuk query
include("../model/kota.php");

// menggabungkan kode dari file db.php
// yg mana db digunakan untuk memanggil koneksi
// ke database
include("../model/db.php");

// membuat object kt dari model kota
$kt = new kota();

// set variabel nama dari form
$kt ->nama = $_POST['nama'];

// hasil akan didapat dari return
// fungsi add dari object
$result = $kt->add(get_connection("../config.ini"));

// lalu akan ditampilkan sebagai body response
// sebagai json
echo json_encode($result, JSON_PRETTY_PRINT | JSON_UNESCAPED_SLASHES);

?>