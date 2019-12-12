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
<head>
	<style type="text/css">
		textarea{
			height: 300px;
			width: 400px;
		}
	</style>
</head>
<div class="container top_space" style="float:left;">
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

// define variables and set to empty values
	$last_name_error = $password_hash_error = $specialty_error = $country_error = $dance_status_error = 
	$artist_images_error = "";

if (empty($_GET)){
	echo "No artist selected.";
	$last_name = "";
	$first_name = "";
	$email_address = "";
	$password_hash = "";
	$image = "";
	$phone_number = "";
	$specialty = "";
	$country = "";
	$state = "";	
}

else{
$id = $_GET['id'];

	$last_name = "";
	$first_name = "";
	$email_address = "";
	$password_hash = "";
	$image = "";
	$phone_number = "";
	$specialty = "";
	$country = "";
	$state = "";
	$city="";
	$address="";	

	$sql = "SELECT * FROM Artists WHERE ID = '$id'";
$result = $conn->query($sql);

if ($_SERVER["REQUEST_METHOD"] == "POST"){
	
	if (empty($_POST["last_name"])){
		$last_name = "";
	}
	else{
		$last_name = test_input($_POST["last_name"]);
	}

	if (empty($_POST["first_name"])){
		$first_name = "";
	}
	else{
		$first_name = test_input($_POST["first_name"]);
	}

	if (empty($_POST["email_address"])){
		$email_address = "";
	}
	else{
		$email_address = test_input($_POST["email_address"]);
	}
	
	if ($_POST["password_hash"] === ""){
		$password_hash = "";
	}
	else{
		$password_hash = test_input($_POST["password_hash"]);
	}

	if (empty($_POST["image"])){
		$image = "";
	}
	else{
		$image = test_input($_POST["image"]);
	}

	if (empty($_POST["phone_number"])){
		$phone_number = "";
	}
	else{
		$phone_number = test_input($_POST["phone_number"]);
	}

	if (empty($_POST["specialty"])){
		$specialty = "";
	}
	else{
		$specialty = test_input($_POST["specialty"]);
	}

	if (empty($_POST["country"])){
		$country = "";
	}
	else{
		$country = test_input($_POST["country"]);
	}

	if (empty($_POST["state"])){
		$state = "";
	}
	else{
		$state = test_input($_POST["state"]);
	}
	if (empty($_POST["city"])){
		$city = "";
	}
	else{
		$city = test_input($_POST["city"]);
	}
	if (empty($_POST["address"])){
		$address = "";
	}
	else{
		$address = test_input($_POST["address"]);
	}
// If no errors, submit changes
		$sqlUpdate = "UPDATE Artists
		SET last_name = '$last_name', first_name = '$first_name', email_address = '$email_address', password_hash = '$password_hash', image = '$image', phone_number = '$phone_number', specialty = '$specialty', country = '$country', state  = '$state', city='$city', address='$address' WHERE ID ='$id'";

		echo $sqlUpdate;
		$update = $conn->query($sqlUpdate);
		$conn->close();
 		//header('Location: Artists.php');
}

}

if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
if(isset($_SESSION['username'])){

 
echo '
<form method="post" action="'.$_SERVER["PHP_SELF"].'?id='.$id.'">';

echo'
<table width=50% class="suggest_dance_table">

<!-- Dance Name in English Input -->
<tr>
<td>
Last Name:
</td>
<td>
<input type="text" name="last_name" value="'.$row['last_name'].'">
<span class="error">* <?php echo $last_name_error;?></span>
</td>
</tr>

<!-- Dance Name in Telugu Input -->
<tr>
<td>
Address: 
</td>
<td>
<input type="text" name="email_address" value="'.$row['email_address'].'">
</td>
</tr>

<!-- Alternate Dance Name Input -->
<tr>
<td>
First Name: 
</td>
<td><input type="text" name="first_name" value="'.$row['first_name'].'">
</td>
</tr>
';

echo '<tr>
<td>
Email Address: 
</td>
<td><input type="text" name="password_hash" value="'.$row['password_hash'].'">
</td>
</tr>
';

echo '<tr>
<td>
Password Hash: 
</td>
<td>
<input type="text" name="image" value="'.$row["image"].'">
</td>
</tr> ';

echo '
<!-- Dance Description Input -->
<tr>
<td>
Image: 
</td>
<td>
<input type="text" name="phone_number" value="'.$row["phone_number"].'">
</td>
</tr> ';

echo '
<!-- Dance Image Reference Input -->
<tr>
<td>
Phone Number:
</td>
<td>
<input type="text" name="specialty" value="'.$row["specialty"].'">
</td>
</tr> ';

echo '
<!-- Dance Video Reference Input -->
<tr>
<td>
Specialty: 
</td>
<td>
<input type="text" name="country" value="'.$row["country"].'">
</td>
</tr> ';

echo '
<!-- Dance Key Words Input -->
<tr>
<td>
Country:
</td>
<td>
<input type="text" name="state" value="'.$row['state'].'">
</td>
</tr>';
echo '
<!-- Dance Key Words Input -->
<tr>
<td>
State:
</td>
<td>
<input type="text" name="city" value="'.$row['city'].'">
</td>
</tr>';
echo '
<!-- Dance Key Words Input -->
<tr>
<td>
City:
</td>
<td>
<input type="text" name="address" value="'.$row['address'].'">
</td>
</tr>';
				
echo '
	<tr>
	<td>
	<input class="orange_button" type="submit" name="submit" value="Submit Update">
	</td>
	</tr>';
}
}
}
if(!isset($_SESSION['username'])){
	echo "<b>Only admins can update.</b>";
}
if(!$result->num_rows > 0){
	echo "<b>There are no results!</b>";
}

function test_input($data){
	$data = trim($data);
	$data = stripslashes($data);
	$data = htmlspecialchars($data);
	return $data;
}

?>


</table>
</form>

</div>	
</body>
<footer>
<?php include 'footer.php'; ?>
</footer>