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
	$resource_type_error = $ISBN_error = $publication_company_error = $author2_name_error = $dance_status_error = 
	$artist_images_error = "";

if (empty($_GET)){
	echo "No resource selected.";
	$resource_type = "";
	$resource_names = "";
	$resource_location = "";
	$ISBN = "";
	$publication_date = "";
	$author_name = "";
	$publication_company = "";
	$author2_name = "";
	$author3_name = "";	
}

else{
$id = $_GET['id'];

	$resource_type = "";
	$resource_names = "";
	$resource_location = "";
	$ISBN = "";
	$publication_date = "";
	$author_name = "";
	$publication_company = "";
	$author2_name = "";
	$author3_name = "";	

	$sql = "SELECT * FROM Resources WHERE ID = '$id'";
$result = $conn->query($sql);

if ($_SERVER["REQUEST_METHOD"] == "POST"){
	
	if (empty($_POST["resource_type"])){
		$resource_type = "";
	}
	else{
		$resource_type = test_input($_POST["resource_type"]);
	}

	if (empty($_POST["resource_names"])){
		$resource_names = "";
	}
	else{
		$resource_names = test_input($_POST["resource_names"]);
	}

	if (empty($_POST["resource_location"])){
		$resource_location = "";
	}
	else{
		$resource_location = test_input($_POST["resource_location"]);
	}
	
	if ($_POST["ISBN"] === ""){
		$ISBN = "";
	}
	else{
		$ISBN = test_input($_POST["ISBN"]);
	}

	if (empty($_POST["publication_date"])){
		$publication_date = "";
	}
	else{
		$publication_date = test_input($_POST["publication_date"]);
	}

	if (empty($_POST["author_name"])){
		$author_name = "";
	}
	else{
		$author_name = test_input($_POST["author_name"]);
	}

	if (empty($_POST["publication_company"])){
		$publication_company = "";
	}
	else{
		$publication_company = test_input($_POST["publication_company"]);
	}

	if (empty($_POST["author2_name"])){
		$author2_name = "";
	}
	else{
		$author2_name = test_input($_POST["author2_name"]);
	}

	if (empty($_POST["author3_name"])){
		$author3_name = "";
	}
	else{
		$author3_name = test_input($_POST["author3_name"]);
	}
// If no errors, submit changes

		$sqlUpdate = "UPDATE Resources
		SET resource_type = '$resource_type', resource_names = '$resource_names', resource_location = '$resource_location', ISBN = '$ISBN', publication_date = '$publication_date', author_name = '$author_name', publication_company = '$publication_company', author2_name = '$author2_name', AUTHOR3_NAME  = '$author3_name' WHERE ID ='$id'";

		$update = $conn->query($sqlUpdate);
		$conn->close();
 		header('Location: Resources.php');
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
Resource Type: 
</td>
<td>
<input type="text" name="resource_type" value="'.$row['RESOURCE_TYPE'].'">
<span class="error">* <?php echo $resource_type_error;?></span>
</td>
</tr>

<!-- Dance Name in Telugu Input -->
<tr>
<td>
Resource Location: 
</td>
<td>
<input type="text" name="resource_location" value="'.$row['RESOURCE_LOCATION'].'">
</td>
</tr>

<!-- Alternate Dance Name Input -->
<tr>
<td>
Resource Name: 
</td>
<td><input type="text" name="resource_names" value="'.$row['RESOURCE_NAMES'].'">
</td>
</tr>
';

echo '<tr>
<td>
ISBN: 
</td>
<td><input type="text" name="ISBN" value="'.$row['ISBN'].'">
</td>
</tr>
';

echo '<tr>
<td>
Publication date: 
</td>
<td>
<input type="text" name="publication_date" value="'.$row["PUBLICATION_DATE"].'">
</td>
</tr> ';

echo '
<!-- Dance Description Input -->
<tr>
<td>
Author Name: 
</td>
<td>
<input type="text" name="author_name" value="'.$row["AUTHOR_NAME"].'">
</td>
</tr> ';

echo '
<!-- Dance Image Reference Input -->
<tr>
<td>
Publication Company:
</td>
<td>
<input type="text" name="publication_company" value="'.$row["PUBLICATION_COMPANY"].'">
</td>
</tr> ';

echo '
<!-- Dance Video Reference Input -->
<tr>
<td>
Author 2 Name: 
</td>
<td>
<input type="text" name="author2_name" value="'.$row["AUTHOR2_NAME"].'">
</td>
</tr> ';

echo '
<!-- Dance Key Words Input -->
<tr>
<td>
Author 3 Name
</td>
<td>
<input type="text" name="author3_name" value="'.$row['AUTHOR3_NAME'].'">
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