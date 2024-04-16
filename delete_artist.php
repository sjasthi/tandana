<?php
require_once('db_configuration.php');

// Establishing Connection with Server
$servername = DATABASE_HOST;
$db_username = DATABASE_USER;
$db_password = DATABASE_PASSWORD;
$database = DATABASE_DATABASE;

// Create connection
$conn = new mysqli($servername, $db_username, $db_password, $database);
if ($conn->connect_error) {
    die('Connect Error (' . $conn->connect_errno . ') '
            . $conn->connect_error);
}
$id_to_delete=$_GET['id'];
$fetch = mysqli_query($conn,'DELETE FROM Artists WHERE ID='.$id_to_delete)or
die(mysqli_error($conn));
header('Location: Artists.php');
?>