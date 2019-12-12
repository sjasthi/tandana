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

// Check if admin is logged in
if(isset($_SESSION['username'])){
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
echo "<h3>Do you really want to delete: Admin #$login_id - $username?</h3>";

if(isset($_POST['submit'])){

	$admin_check = "SELECT * from login";
	$admin_result = mysqli_query($conn, $admin_check);
	$num_rows = mysqli_num_rows($admin_result);


	if($num_rows > 1){
		$sql = "DELETE FROM login
		WHERE login_id = '$id'";

		if ($conn->query($sql) === TRUE) {
    	echo "Successfully deleted";
    	$_POST['delete_success'] = 'TRUE';
    	header('Location: profile.php?delete_success=TRUE');
		}
		else {
    	echo "Error: " . $sql . "<br>" . $conn->error;
		}
	}

	else{
		$_POST['delete_success'] = 'FALSE';
		header('Location: profile.php');
	}

$conn->close();

}
}

echo '
<form method="post" action="">
<input type="submit" class="yesButton orange_button" name="submit" value="Yes">
<!-- No Button -->
<a href="admin_commands.php" id="noButton" class="orange_button">No</a>
</form>
';
}

else{
	echo "Only admins can delete.";
}



?>


<!-- Yes Button -->



</div>

<script type="text/javascript">
// document.getElementById("noButton").onclick = function(){
// 	location.href = "create.php";
// };
</script>
</body>
<footer>
<?php include 'footer.php'; ?>
</footer>