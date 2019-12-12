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

<div class="container top_space">
  <h3>Update</h3>
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

if (empty($_GET)){
	echo "No admin selected.";
	$login_id = "";
	$username = "";
	$password = "";
}

else{
$id = $_GET['id'];

	$sql = "SELECT login_id, username, password FROM login WHERE login_id = '$id'";
$result = $conn->query($sql);

if(isset($_SESSION['username'])){

	if ($result->num_rows > 0) {

    while($row = $result->fetch_assoc()) {
    // Grab dance ID
    $login_id = $row["login_id"];
	$username = $row["username"];
	$password = $row["password"];
    }

	}

	else {
	    echo "0 results";
	}


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
		$sqlUpdate = "UPDATE login
		SET login_id = '$login_id', username = '$username', password = '$password'
		WHERE login_id ='$id'";

		$update = $conn->query($sqlUpdate);

	if ($conn->query($sql) == TRUE) {
    echo "Admin has been updated!";
    header('Location: profile.php?edit_success=TRUE');
	}
	else {
    echo "Error: " . $sql . "<br>" . $conn->error;
	}

		
	}

	echo '
	<form method="post" action="'.htmlspecialchars($_SERVER["PHP_SELF"]).'?id='.$id.'">

	<table width="30%" style="border-spacing: 10px 20px;">
	<!-- Dance Name in English Input -->
	<tr>
	<td>
	Username: 
	</td>
	<td>
	<input type="text" name="username" value="'.$username.'" required>
	</td>
	</tr>

	<!-- Alternate Dance Name Input -->
	<tr>
	<td>
	Password:
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
	<input class="orange_button" type="submit" name="submit" value="Submit Update">
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
}

function test_input($data){
	$data = trim($data);
	$data = stripslashes($data);
	$data = htmlspecialchars($data);
	return $data;
}

?>

</div>	

</body>
<footer>
<?php include 'footer.php'; ?>
</footer>