<?php
$host = "server-database.cliumscw44qs.ap-south-1.rds.amazonaws.com";  // RDS endpoint
$db_user = "demo";  // DB master username
$db_pass = "leomani123#";  // DB password
$db_name = "data-server";  // DB name

$conn = new mysqli($host, $db_user, $db_pass, $db_name);
if ($conn->connect_error) {
    die("Database connection failed: " . $conn->connect_error);
}
?>
