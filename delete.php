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
	echo "No dance selected.";
	$dance_english_name = "";
	$dance_alternate_name = "";
	$dance_telugu_name = "";
	$dance_category = "";
	$dance_origin = "";
	$dance_description = "";
	$dance_image_reference = "";
	$dance_video_reference = "";
	$dance_key_words = "";	
	$dance_status = "";
}

else{
$id = $_GET['id'];

$sql = "SELECT dance_id, dance_english_name, dance_alternate_name, dance_telugu_name, dance_category, dance_origin, dance_description, dance_image_reference, dance_video_reference, dance_key_words, dance_status FROM dances WHERE dance_id = '$id'";
$result = $conn->query($sql);

if ($result->num_rows > 0) {

    while($row = $result->fetch_assoc()) {
    // Grab dance ID
    $dance_id = $row["dance_id"];
    $dance_english_name = $row["dance_english_name"];
	$dance_alternate_name = $row["dance_alternate_name"];
	$dance_telugu_name = $row["dance_telugu_name"];
	$dance_category = $row["dance_category"];
	$dance_origin = $row["dance_origin"];
	$dance_description = $row["dance_description"];
	$dance_image_reference = $row["dance_image_reference"];
	$dance_video_reference = $row["dance_video_reference"];
	$dance_key_words = $row["dance_key_words"];	
	$dance_status = $row["dance_status"];

    }

}

else {
    echo "0 results";
}
echo "<h3>Do you really want to delete: Dance #$dance_id - $dance_english_name?</h3>";

}

if(isset($_POST['submit'])){
	$sql = "DELETE FROM dances
	WHERE dance_id = '$id'";

	if ($conn->query($sql) === TRUE) {
    echo "New record created successfully.";
	}
	else {
    echo "Error: " . $sql . "<br>" . $conn->error;
	}

$conn->close();

	header('Location: delete_submitted.php');
}

echo '
<form method="post" action="">
<input type="submit" class="yesButton orange_button" name="submit" value="Yes">
<!-- No Button -->
<a href="index.php" id="noButton" class="orange_button">No</a>
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