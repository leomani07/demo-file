<?php
$host = "rds.c7a0ge8ccl27.ap-south-1.rds.amazonaws.com";  // RDS endpoint
$db_user = "admin";  // DB master username
$db_pass = "5OvXbfTpoIlClznb6CKk";  // DB password
$db_name = "LoginDB";  // DB name

$conn = new mysqli($host, $db_user, $db_pass, $db_name);
if ($conn->connect_error) {
    die("Database connection failed: " . $conn->connect_error);
}
?>
