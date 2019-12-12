<?php
require_once('db_configuration.php');

if(!isset($_SESSION)) 
    { 
        session_start(); 
    } 

	// Establishing Connection with Server by passing server_name,
	$servername = DATABASE_HOST;
	$db_username = DATABASE_USER;
	$db_password = DATABASE_PASSWORD;
	$database = DATABASE_DATABASE;

// Create connection
$conn = new mysqli($servername, $db_username, $db_password, $database);

echo'<div class="container top_space">';
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
// echo "Connected successfully<br>";
$conn->set_charset("utf8");

if(isset($_POST['login'])){
	$username = mysqli_real_escape_string($conn,$_POST['username']);
	$password = sha1(mysqli_real_escape_string($conn,($_POST['password'])));
	$sel_user = "SELECT * FROM login WHERE username='$username' AND password='$password'";
	$run_user = mysqli_query($conn, $sel_user);
	$check_user = mysqli_num_rows($run_user);

	if($check_user > 0){
		if(isset($_SESSION['invalid_entry'])){
    		unset($_SESSION['invalid_entry']);
    	}
		$_SESSION['username']=$username;
		echo "SUCCESS!";
		echo $_SESSION['username'];
		// echo "<script>window.open('profile.php','_self')</script>";
		header("Location: admin_commands.php");
	}

	else{
		$_SESSION['invalid_entry']="failed";
		echo "<script>alert('Username or password is incorrect, try again!')</script>";
		header("Location: admin.php");
	}
}

echo '</div>';
?>