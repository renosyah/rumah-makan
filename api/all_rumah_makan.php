<?php

header("Content-Type: application/json; charset=UTF-8");
include("../model/rumah_makan.php");
include("../model/db.php");

$offset = $_GET['offset'];
$limit = $_GET['limit'];

$rm = new rumah_makan();
$result = $rm->all(get_connection("../config.ini"),$offset,$limit);
echo json_encode($result, JSON_PRETTY_PRINT | JSON_UNESCAPED_SLASHES);

?>