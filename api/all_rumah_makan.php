<?php

header("Content-Type: application/json; charset=UTF-8");
include("../model/rumah_makan.php");
include("../model/db.php");
include("../model/list_query.php");

$query = new list_query();
$query->search_by = $_GET['search_by'];
$query->search_value = $_GET['search_value'];
$query->order_by = $_GET['order_by'];
$query->order_dir = $_GET['order_dir'];
$query->offset = $_GET['offset'];
$query->limit = $_GET['limit'];

$rm = new rumah_makan();
$result = $rm->all(get_connection("../config.ini"),$query);
echo json_encode($result, JSON_PRETTY_PRINT | JSON_UNESCAPED_SLASHES);

?>