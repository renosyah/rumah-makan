<?php

header("Content-Type: application/json; charset=UTF-8");
include("../model/kota.php");
include("../model/db.php");

$kt = new kota();
$kt ->id = $_GET['id'];

$result = $kt->one(get_connection("../config.ini"));
echo json_encode($result, JSON_PRETTY_PRINT | JSON_UNESCAPED_SLASHES);

?>