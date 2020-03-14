<?php

header("Content-Type: application/json; charset=UTF-8");
include("../model/rumah_makan.php");
include("../model/db.php");

$offset = $_GET['offset'];
$limit = $_GET['limit'];

$current_latitude = $_GET['current_latitude'];
$current_longitude = $_GET['current_longitude'];

$range = $_GET['range'];

$rm = new rumah_makan();
$result = $rm->all_closes(get_connection("../config.ini"),$current_latitude,$current_longitude,$range,$offset,$limit);
echo json_encode($result, JSON_PRETTY_PRINT | JSON_UNESCAPED_SLASHES);

?>