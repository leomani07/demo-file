<?php
$host = "database-server.cnosg02yon0n.ap-south-1.rds.amazonaws.com";  // RDS endpoint
$db_user = "admin";  // DB master username
$db_pass = "leomani123#";  // DB password
$db_name = "LoginDB";  // DB name

$conn = new mysqli($host, $db_user, $db_pass, $db_name);
if ($conn->connect_error) {
    die("Database connection failed: " . $conn->connect_error);
}
?>
