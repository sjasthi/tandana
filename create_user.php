<?php 
// Allows user to return 'back' to this page without caching issues
ini_set('session.cache_limiter','public');
session_cache_limiter(false);

// Start session to store variables
session_start(); 

include 'navigation.php';
?>

<div class="container top_space">
  <h3>Create New User</h3>
<?php
require_once('db_configuration.php');

// Establishing Connection with Server
$servername = DATABASE_HOST;
$db_username = DATABASE_USER;
$db_password = DATABASE_PASSWORD;
$database = DATABASE_DATABASE;

// Create connection
$conn = new mysqli($servername, $db_username, $db_password, $database);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
// echo "Connected successfully<br>";
$conn->set_charset("utf8");


if(isset($_SESSION['username'])){


	if ($_SERVER["REQUEST_METHOD"] == "POST"){
	
		if (empty($_POST["login_id"])){
		
		}
		else{
		$login_id = test_input($_POST["login_id"]);
		}

		if (empty($_POST["username"])){

		}
		else{
		$username = test_input($_POST["username"]);
		}

		if (empty($_POST["password"])){

		}
		else{
		$password = sha1(test_input($_POST["password"]));
		}

// If no errors, submit changes
		$sql = "INSERT INTO login
		(login_id, username, password)
		VALUES ('$login_id', '$username', '$password')";

		$update = $conn->query($sqlUpdate);

	if ($conn->query($sql) === TRUE) {
    echo "Admin has been created!";
    header('Location: profile.php?create_success=TRUE');
	}
	else {
    echo "Error: " . $sql . "<br>" . $conn->error;
    header('Location: profile.php?user_error=TRUE');
	}
		
	}

	echo '
	<form method="post" action="'.htmlspecialchars($_SERVER["PHP_SELF"]).'">

	<table width="30%" style="border-spacing: 10px 20px;">
	<!-- Dance Name in English Input -->
	<tr>
	<td>
	Username: 
	</td>
	<td>
	<input type="text" name="username" value="" required>
	</td>
	</tr>

	<!-- Alternate Dance Name Input -->
	<tr>
	<td>
	Password
	</td>
	<td><input type="text" name="password" value="" required>
	</td>
	</tr>
	</table>

	<!-- Submit Button -->
	<br>
	<table>
	<tr>
	<td>
	<input class="orange_button" type="submit" name="submit" value="Create User">
	<!-- No Button -->
	<a href="profile.php" id="noButton" class="orange_button">Cancel</a>
	</td>
	</tr>

	</table>
	</form>
	';
}

else{
	echo ' Update: Only admins can update.';
}

function test_input($data){
	$data = trim($data);
	$data = stripslashes($data);
	$data = htmlspecialchars($data);
	return $data;
}
?>
</div>	

<style type="text/css">
	.container {
    padding-top: 0 !important; 
    position: relative; 
    top: 0 !important; 
}
</style>
</body>
<footer>
<?php include 'footer.php'; ?>
</footer>