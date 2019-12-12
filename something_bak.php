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
	echo "No dance selected.";
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
		$resource_type_error = "is required.";
	}
	else{
		$resource_type = test_input($_POST["resource_type"]);
	}

	if (empty($_POST["resource_names"])){
		$resource_names_error = "is required";
	}
	else{
		$resource_names = test_input($_POST["resource_names"]);
	}

	if (empty($_POST["resource_location"])){
		$resource_location_erro = "is required";
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
		$author_name = mysqli_real_escape_string($conn, test_input($_POST["author_name"]));
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

	if ($_POST["dance_status"] === ""){
		$dance_status_error = "is required.";
	}
	else{
		$dance_status = test_input($_POST["dance_status"]);
	}	


// If no errors, submit changes
	if($resource_type_error === "" && $ISBN_error === "" && $publication_company_error === "" && $author2_name_error === "" && $artist_images_error === ""){

		$sqlUpdate = "UPDATE Resources
		SET resource_type = '$resource_type', resource_names = '$resource_names', resource_location = '$resource_location', ISBN = '$ISBN', publication_date = '$publication_date', author_name = '$author_name', publication_company = '$publication_company', author2_name = '$author2_name', author3_name  = '$author3_name', dance_status = '$dance_status', artist_images = '$artist_images' WHERE ID ='$id'";

		$update = $conn->query($sqlUpdate);


	if ($conn->query($sql) === TRUE) {
    echo "New record created successfully.";
	}
	else {
    echo "Error: " . $sql . "<br>" . $conn->error;
	}

	$conn->close();

		header('Location: search.php?update=success');

	}

}

}

if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
if(isset($_SESSION['username'])){

 
echo '
<span class="error">* required field.</span>
<form method="post" enctype="multipart/form-data" action="'.htmlspecialchars($_SERVER["PHP_SELF"]).'?id='.$id.'">';

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

echo '
<!-- Dance Origin Input -->
<tr>
<td>
Publication date: 
</td>
<td>
<input type="text" name="publication_date" value="'.$row["PUBLICATION_DATE"].'">
</td>
</tr>

<!-- Dance Description Input -->
<tr>
<td>
Author Name: 
</td>
<td>
<input type="text" name="publication_date" value="'.$row["AUTHOR_NAME"].'">
</td>
</tr>

<!-- Dance Image Reference Input -->
<tr>
<td>
Publication Company:
</td>
<td>
<input type="text" name="PUBLICATION_COMPANY" value="'.$row["PUBLICATION_COMPANY"].'">
<span class="error">'.$publication_company_error.'</span>
</td>
</tr>

<!-- Dance Video Reference Input -->
<tr>
<td>
Author 2 Name: 
</td>
<td>
<input type="text" name="PUBLICATION_COMPANY" value="'.$row["AUTHOR2_NAME"].'">
<span class="error">'.$author2_name_error.'</span>
</td>
</tr>

<!-- Dance Key Words Input -->
<tr>
<td>
Author 3 Name
</td>
<td>
<input type="text" name="author3_name" value="'.$row['AUTHOR3_NAME'].'">
</td>
</tr> ';
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
<script type="text/javascript">
var abc = 0;      // Declaring and defining global increment variable.
$(document).ready(function() {
//  To add new input file field dynamically, on click of "Add More Files" button below function will be executed.
$('#add_more').click(function() {
$(this).before($("<div/>", {
id: 'filediv'
}).fadeIn('slow').append($("<input/>", {
name: 'file[]',
type: 'file',
id: 'file'
}), $("<br/><br/>")));
});
// Following function will executes on change event of file input to select different file.
$('body').on('change', '#file', function() {
if (this.files && this.files[0]) {
abc += 1; // Incrementing global variable by 1.
var z = abc - 1;
var x = $(this).parent().find('#previewimg' + z).remove();
$(this).before("<div id='abcd" + abc + "' class='abcd'><img id='previewimg" + abc + "' src=''/></div>");
var reader = new FileReader();
reader.onload = imageIsLoaded;
reader.readAsDataURL(this.files[0]);
$(this).hide();
$("#abcd" + abc).append($("<img/>", {
id: 'img',
src: 'x.png',
alt: 'delete'
}).click(function() {
$(this).parent().parent().remove();
}));
}
});
// To Preview Image
function imageIsLoaded(e) {
$('#previewimg' + abc).attr('src', e.target.result);
};
$('#upload').click(function(e) {
var name = $(":file").val();
if (!name) {
alert("First Image Must Be Selected");
e.preventDefault();
}
});
});

</script>
</body>
<footer
<?php include 'footer.php'; ?>
</footer>