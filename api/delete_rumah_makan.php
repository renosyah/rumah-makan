<?php

header("Content-Type: application/json; charset=UTF-8");
include("../model/rumah_makan.php");
include("../model/db.php");

$rm = new rumah_makan();
$rm ->id = $_POST['id'];

$rm = new rumah_makan();
$result = $rm->delete(get_connection("../config.ini"));
echo json_encode($result, JSON_PRETTY_PRINT | JSON_UNESCAPED_SLASHES);

?>