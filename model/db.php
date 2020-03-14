<?php


function get_connection($config){

    $configs = parse_ini_file($config,true);

    $username = $configs['database']['username'];
    $password = $configs['database']['password'];
    $host = $configs['database']['host'];
    $port = $configs['database']['port'];
    $dbname = $configs['database']['name'];
    
    $db = new mysqli($host.":".$port,$username,$password,$dbname);
    if ($db->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    return $db;
}


?>