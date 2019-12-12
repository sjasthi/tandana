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
  <h3 class="headline_white">Your dance has been added to the database!</h3>
<?php
require_once('db_configuration.php');

		$dance_id = "";
		$dance_english_name = $_SESSION['confirmation_english_name'];
		$dance_alternate_name = $_SESSION['confirmation_alternate_name'];
		$dance_telugu_name = $_SESSION['confirmation_telugu_name'];
		$dance_category = $_SESSION['confirmation_category'];
		$dance_origin = $_SESSION['confirmation_origin'];
		$dance_description = $_SESSION['confirmation_description'];
		$dance_image_reference = $_SESSION['confirmation_image_reference'];
		$dance_video_reference = $_SESSION['confirmation_video_reference'];
		$dance_key_words = $_SESSION['confirmation_key_words'];
		$artist_images = $_SESSION['confirmation_artist_images'];
		$links = $_SESSION['confirmation_links'];

		// Split image and video strings by commas to parse for url
		$image_reference_array = [];
		$video_reference_array = [];
		
		// $arraySize = sizeof($image_reference_array);
		// echo "$arraySize<br>";
		// echo "$image_reference_array[0]<br>";
		// var_dump($image_reference_array);

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
	$sql = "SELECT dance_id, dance_english_name, dance_alternate_name, dance_telugu_name, dance_category, dance_origin, dance_description, dance_image_reference, dance_video_reference, dance_key_words, dance_status, artist_images, links FROM dances WHERE dance_english_name = '$dance_english_name'";
		$result = $conn->query($sql);
}

else{
$id = $_GET['id'];
	$sql = "SELECT dance_id, dance_english_name, dance_alternate_name, dance_telugu_name, dance_category, dance_origin, dance_description, dance_image_reference, dance_video_reference, dance_key_words, dance_status, artist_images, links FROM dances WHERE dance_id = '$id'";
		$result = $conn->query($sql);
}

if ($result->num_rows > 0) {

    while($row = $result->fetch_assoc()) {
    	// Grab dance ID
    	$dance_id = $row["dance_id"];
  //   	$dance_english_name = $_row["dance_english_name"];
		// $dance_alternate_name = $_row["dance_alternate_name"];
		// $dance_telugu_name = $_row["dance_telugu_name"];
		// $dance_category = $_row["dance_category"];
		// $dance_origin = $_row["dance_origin"];
		// $dance_description = $_row["dance_description"];
		// $dance_image_reference = $_row["dance_image_reference"];
		// $dance_video_reference = $_row["dance_video_reference"];
		// $dance_key_words = $_row["dance_key_words"];

    	$image_reference_array = explode(',', $row["dance_image_reference"]);
		$video_reference_array = explode(',', $row["dance_video_reference"]);
		$artist_images_array = explode(',', $row["artist_images"]);
		$links_array = explode(',', $row["links"]);

// Display dance data
echo "
<table width='30%' class='view_dance_table' border='1px'>
<tr>
<td>
<!-- Dance ID -->
Dance ID: 
</td>
<td>
". $row["dance_id"]."
</td>
</tr>

<tr>
<td>
<!-- Dance Name in English Input -->
Name (English): 
</td>
<td>
". $row["dance_english_name"]."
</td>
</tr>

<tr>
<td>
<!-- Dance Name in Telugu Input -->
Name (Telugu): 
</td>
<td>
". $row["dance_telugu_name"]."
</td>
</tr>


<tr>
<td>
<!-- Alternate Dance Name Input -->
Other Names: 
</td>
<td>
". $row["dance_alternate_name"]."
</td>
</tr>



<tr>
<td>
<!-- Dance Category Input -->
Category: 
</td>
<td>
". $row["dance_category"]."
</td>
</tr>

<tr>
<td>
<!-- Dance Origin Input -->
Origin: 
</td>
<td>
". $row["dance_origin"]."
</td>
</tr>

<tr>
<td>
<!-- Dance Description Input -->
Description: 
</td>
<td>
". $row["dance_description"]."
</td>
</tr>

<tr>
<td>
<!-- Dance Image Reference Input -->
Images: 
</td>
<td>
";

if($image_reference_array[0] != ""){
	for ($i = 0; $i < sizeof($image_reference_array); $i++){
	echo '<img src="' . $image_reference_array[$i]. '" width="500" height="400"><br>';
}
}

// Loop through image array, display images
echo "
</td>
</tr>

<tr>
<td>
<!-- Dance Video Reference Input -->
Videos: 
</td>
<td>
";
if ($video_reference_array[0] != ""){
	for ($j = 0; $j < sizeof($video_reference_array); $j++){
	echo '<iframe width="500" height="400"
	src="'. $video_reference_array[$j] .'"><br>
	</iframe>';
}
}


// Loop through video array, display videos

echo "
</td>
</tr>

<tr>
<td>
<!-- Artist Images Input -->
Artist Images: 
</td>
<td>
";

$ext = explode(',', $row["artist_images"]);   // Explode file name from comma
foreach($ext as $element){
	echo '<img src="'. $element . '"/><br/>';
}



// for ($i = 0; $i < sizeof($artist_images_array); $i++){
// 	echo '<img src="' . $artist_images_array[$i]. '" width="500" height="400"><br>';
// }
// Loop through video array, display videos

echo "
</td>
</tr>

<tr>
<td>
<!-- Links Input -->
Links: 
</td>
<td>
";
for ($i = 0; $i < sizeof($links_array); $i++){
	echo $links_array[$i];
	echo '<br>';
}
// Loop through video array, display videos



echo "
</td>
</tr>
<tr>
<td>
<!-- Dance Key Words Input -->
Key Words: 
</td>
<td>
". $row["dance_key_words"]."
</td>
</tr>

<tr>
<td>
<!-- Dance Status Input -->
Status: 
</td>
<td>
". $row["dance_status"]."
</td>
</tr>

</table>
<br>"
;
    }
} 

else {
    echo "0 results";
}

if(isset($_SESSION['username'])){
    echo '
		<br>
		<form method="post" action="">
		<input class="orange_button" type="submit" name="action" value="Update" />
		<input class="orange_button" type="submit" name="action" value="Delete" />
		<input type="hidden" name="id" value="$dance_id"/>
		</form>';
}

else{

}

if (isset($_POST['action'])){
	if ($_POST['action'] && $_POST['id']){
	if ($_POST['action'] == 'Update'){
		header('Location: update.php?id=' . $dance_id);
	}

	else{
		header('Location: delete.php?id=' . $dance_id);
	}
}

}


$conn->close();

?>




<br><br><a href="index.php">Back to Home Page.</a>
</div>
<footer>
<?php include 'footer.php'; ?>
</footer>	
</body>
</html>

