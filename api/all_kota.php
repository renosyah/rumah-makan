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

// menggabungkan kode dari file list_query
// yg mana list_query digunakan sebagai
// object yg digunakan untuk parameter query
include("../model/list_query.php");

// membuat object kt dari model list_query
$query = new list_query();

// set variabel search_by dari form
$query->search_by = $_GET['search_by'];

// set variabel search_value dari form
$query->search_value = $_GET['search_value'];

// set variabel order_by dari form
$query->order_by = $_GET['order_by'];

// set variabel order_dir dari form
$query->order_dir = $_GET['order_dir'];

// set variabel offset dari form
$query->offset = $_GET['offset'];

// set variabel limit dari form
$query->limit = $_GET['limit'];

// membuat object kt dari model kota
$kt = new kota();

// hasil akan didapat dari return
// fungsi all dari object
$result = $kt->all(get_connection("../config.ini"),$query);

// lalu akan ditampilkan sebagai body response
// sebagai json
echo json_encode($result, JSON_PRETTY_PRINT | JSON_UNESCAPED_SLASHES);

?>