<?php

header("Content-Type: application/json; charset=UTF-8");
include("../model/rumah_makan.php");
include("../model/db.php");

$rm = new rumah_makan();
$rm ->kota_id= $_POST['kota_id'];
$rm ->nama = $_POST['nama'];
$rm ->url_menu = $_POST['url_menu'];
$rm ->alamat = $_POST['alamat'];
$rm ->deskripsi = $_POST['deskripsi '];
$rm ->latitude = $_POST['latitude'];
$rm ->longitude = $_POST['longitude'];
$rm ->url_gambar = $_POST['url_gambar'];

$result = $rm->add(get_connection("../config.ini"));
echo json_encode($result, JSON_PRETTY_PRINT | JSON_UNESCAPED_SLASHES);

?>