<?php include 'navigation.php';

// Start session to store variables
if(!isset($_SESSION)) 
    { 
        session_start(); 
    } 
// Allows user to return 'back' to this page
ini_set('session.cache_limiter','public');
session_cache_limiter(false);

 ?>

<!DOCTYPE html>
<html>
<head>
</head>
<body>
<div class="container top_space">
  <h3>Update successful!</h3>
<?php
require_once('db_configuration.php');

$servername = DATABASE_HOST;
$username = DATABASE_USER;
$password = DATABASE_PASSWORD;
$database = DATABASE_DATABASE;

// Create connection
$conn = new mysqli($servername, $username, $password, $database);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
// echo "Connected successfully<br>";
$conn->set_charset("utf8");

?>

<br><br><a href="index.php">Back to Home Page.</a>
</div>
	
</body>