<?php include 'navigation.php';

// Start session to store variables
if(!isset($_SESSION)) 
    { 
        session_start(); 
    } 
// // Allows user to return 'back' to this page
// ini_set('session.cache_limiter','public');
// session_cache_limiter(false);

 ?>
<!DOCTYPE html>
<html>
<head>
<!-- <script>
$("a").hover(function(){
    $(this).css("background-color", "green");
    }, function(){
    $(this).css("background-color", "#3953ad");
});
</script> -->
<style>
        textarea {
            height: 400px;
            width: 600px;
        }
        div.submit_wrapper {
            background-color: #f7dc83; 
            color: white; 
            padding: 20px;
            border-radius: 10px; 
        }
		.container {
			padding-top: 0 !important; 
			position: relative; 
			top: 0 !important; 
		}
        label {
            color: #000; 
            margin-bottom: 5px; 
        }
</style>
</head>
<body>

<div class="container submit_wrapper top_space" style="float: left; width:45%;">
  <h3 class="headline_white" style="color : #000">Add an Artist</h3>
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
	$last_name_error = $first_name_error = $city_error = $phone_number_error = $specialty_error = 
	$country_error = $state_error = "";
	
	$last_name = $first_name = $email_address = $password_hash
	= $image = $phone_number = $specialty = $country = $state = $city= $address="";	

//$city
$_SESSION['confirmation_last_name'] = $_SESSION['confirmation_alternate_name'] = $_SESSION['confirmation_'] =
$_SESSION['confirmation_first_name'] = $_SESSION['confirmation_email_address'] = $_SESSION['confirmation_password_hash'] = 
$_SESSION['confirmation_city'] = $_SESSION['confirmation_phone_number'] = $_SESSION['confirmation_key_words'] = $_SESSION['confirmation_specialty'] = $_SESSION['confirmation_country'] = $_SESSION['confirmation_state'] = $_SESSION['confirmation_address']= $_SESSION['confirmation_city']="";


if ($_SERVER["REQUEST_METHOD"] == "POST"){
	
	if (empty($_POST["last_name"])){
		$last_name_error = "is required.";
	}
	else{
		$last_name = test_input($_POST["last_name"]);
	}

	if (empty($_POST["first_name"])){
		$first_name_error = "is required.";
	}
	else{
		$first_name = test_input($_POST["last_name"]);
	}

	if (empty($_POST["country"])){
		$country = "";
	}
	else{
		$country = test_input($_POST["country"]);
	}

	if (empty($_POST["image"])){
		$image = "";
	}
	else{
		$image = test_input($_POST["image"]);
	}
	if (empty($_POST["email_address"])){
		$email_address = "";
	}
	else{
		$email_address = test_input($_POST["email_address"]);
	}

	if (empty($_POST["password_hash"])){
		$password_hash = "";
	}
	else{
		$password_hash = mysqli_real_escape_string($conn, test_input($_POST["password_hash"]));
	}

	if (empty($_POST["city"])){
		$city = "";
	}
	else{
		$city = test_input($_POST["city"]);
		 // check if URL address syntax is valid (this regular expression also allows dashes in the URL)
	}

	if (empty($_POST["phone_number"])){
		$phone_number = "";
	}
	else{
		$phone_number = test_input($_POST["phone_number"]);
		 // check if URL address syntax is valid (this regular expression also allows dashes in the URL)
	}	
	
	if ($_POST["specialty"] === ""){
		$specialty_error = "is required.";
	}
	else{
		$specialty = test_input($_POST["specialty"]);
	}
	 
	if (empty($_POST["state"])){
		$state = "";
	}
	else{
		$state = test_input($_POST["state"]);
	}

// If no errors, go to confirmation page
	if(true){

		//$last_name_error === "" && $first_name_error === "" && $city_error === "" && $phone_number_error === "" && $country_error === "" && $state_error === ""


				//Store sessions
		$_SESSION['confirmation_last_name'] = $last_name;
 		$_SESSION['confirmation_first_name'] = $first_name;
		$_SESSION['confirmation_email_address'] = $email_address;
		$_SESSION['confirmation_password_hash'] = $password_hash;
		$_SESSION['confirmation_city'] = $city;
		$_SESSION['confirmation_phone_number'] = $phone_number;
 		$_SESSION['confirmation_specialty'] = $specialty;
		$_SESSION['confirmation_country'] = $country;
		$_SESSION['confirmation_state'] = $state;

		$last_name_post=$_POST['last_name'];
		$first_name_post=$_POST['first_name'];
		$city_post=$_POST['city'];
		$address_post=$_POST['address'];
		$email_address_post=$_POST['email_address'];
		$password_hash_post=$_POST['password_hash'];
		$phone_number_post=$_POST['phone_number'];
		$specialty_post=$_POST['specialty'];
		$country_post=$_POST['country'];
		$state_post=$_POST['state'];
		$image_post=$_POST['image'];

	// Run Query
		if(isset($_POST['submit'])){
	$sql = "INSERT INTO Artists (last_name, first_name, city, address, email_address, password_hash, phone_number, specialty, country, state,image)
	VALUES ('$last_name_post', '$first_name_post', '$city_post', '$address_post' , '$email_address_post', '$password_hash_post', '$phone_number_post', '$specialty_post', '$country_post', '$state_post','$image_post')";
	echo(var_dump($_POST));
	
	echo('<br>');
	echo('<br>');
	echo('<br>');
	echo('<br>');

	echo($sql);

//Close Connection
			if ($conn->query($sql) === TRUE) {
		    echo "New record created successfully.";
			}
			else {
		    echo "Error: " . $sql . "<br>" . $conn->error;
			}

			//header('Location: admin_commands.php');
		}

			}

		}

function test_input($data){
	$data = trim($data);
	$data = stripslashes($data);
	$data = htmlspecialchars($data);
	return $data;
}

// if(!isset($_POST['first_name'])) 
// {
// $errorMessage .= "<li>You forgot to select a dance first_name!</li>";
// }

?>
<!--leave alome-->
<span class="error">* required field.</span>
<form method="post" enctype="multipart/form-data" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>">

<table width=30% class="suggest_table">
<!-- Type of the resource(book,magazine,online,etc) -->
<tr>
<td>
<label>Last Name:</label>
</td>
</tr>
<tr>
<td>
<input type="text" name="last_name" value="<?php echo $last_name;?>">
<span class="error">* <?php echo $last_name;?></span>
</td>
</tr>

<tr>
<td>
<label>First Name:</label>
</td>
</tr>
<tr>
<td>
<input type="text" name="first_name" value="<?php echo $first_name;?>">
</td>
</tr>


<tr>
<td>
<label>Phone Number:</label>
</td>
</tr>
<tr>
<td>
<input type="text" name="phone_number" value="<?php echo $phone_number;?>">
<span class="error">* <?php echo $last_name_error;?></span>
</td>
</tr>

<!-- Dance first_name Input -->
<tr>
<td>
<label>Specialty:</label>
</td>
</tr>
<tr>
<td>
<input type="text" name="specialty" value="<?php echo $first_name;?>">
<span class="error">* <?php echo $specialty;?></span>
</td>
</tr>

<!-- Dance email_address Input -->
<tr>
<td>
<label>Country:</label>
</td>
</tr>
<tr>
<td>
<input type="text" name="country" value="<?php echo $country;?>">
</td>
</tr>

<!-- Dance password_hash Input -->
<tr>
<td>
<label>State: </label>
</td>
</tr>
<tr>
<td>
<input type="text" name="state" value="<?php echo $state;?>">
</td>
</tr>



<!-- Dance Image Reference Input -->
<tr>
<td>
<label>Email Address: </label>
</td>
<tr>
<td>
<input type="text" name="email_address" value="<?php echo $email_address;?>">
</td>
</tr>

<!-- Dance Video Reference Input -->
<tr>
<td>
<label>Password Hash:</label>
</td>
</tr>
<tr>
<td>
<input type="text" name="password_hash" value="<?php echo $password_hash;?>">
</td>
</tr>

<!-- Upload Image Input -->
<tr>
<td>
<label>Image:</label>
</td>
</tr>
<tr>
<td>
<input type="text" name="image" value="<?php echo $image;?>">
</td>
</tr>

<tr>
<td>
<label>City:</label>
</td>
</tr>
<tr>
<td>
<div id="filediv">
<input type="text" name="city" value="<?php echo $city;?>">
</div>
</td>
</tr>

<tr>
<td>
<label>Address:</label>
</td>
</tr>
<tr>
<td>
<input type="text" name="address" value="<?php echo $address;?>"><br><br>
</td>
</tr>


<!-- Submit Button -->
<tr>
<td>
<input class="orange_button" type="submit" name="submit" value="Submit">
</td>
</tr>
</table>
</form>
</div>

<footer>
<?php include 'footer.php'; ?>
</footer>
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
$(this).before("<div id='abcd" + abc + "' class='abcd'><img id='previewimg" + abc + "' src='' width='500px' height='400px'/></div>");
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

$('.navbar-nav li').removeClass('active');
$('.navbar-nav li.page_admin').addClass('active');

});

</script>
</body>
