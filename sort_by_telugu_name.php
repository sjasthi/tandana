<?php
require_once('db_configuration.php');
require 'configure.php';

		$dance_id = "";
		$dance_english_name = "";
		$dance_alternate_name = "";
		$dance_telugu_name = "";
		$dance_category = "";
		$dance_origin = "";
		$dance_description = "";
		$dance_image_reference = "";
		$dance_video_reference = "";
		$dance_key_words = "";

		// Split image and video strings by commas to parse for url
		$image_reference_array = [];
		$video_reference_array = [];
		

$servername = DATABASE_HOST;
$username = DATABASE_USER;
$password = DATABASE_PASSWORD;
$database = DATABASE_DATABASE;

// Create connection
$conn = new mysqli($servername, $username, $password, $database);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
// echo "Connected successfully<br>";
$conn->set_charset("utf8");

		if(null !== english_menu_order){
    	$english_menu_order = english_menu_order;
		}
		else{
   		$english_menu_order = 'alphabetical';
		}

		
		if(null !== telugu_menu_order){
    	$telugu_menu_order = telugu_menu_order;
		}
		else{
   		$telugu_menu_order = 'alphabetical';
		}

if ($telugu_menu_order == 'alphabetical'){
    $sql = "SELECT dance_id, dance_english_name, dance_telugu_name FROM dances ORDER BY dance_telugu_name";
}
else{
	$sql = "SELECT dance_id, dance_english_name, dance_telugu_name FROM dances ORDER BY dance_id";
}	
	$result = $conn->query($sql);

	if ($result->num_rows > 0) {
		echo '<table width="100%" border="1px">';

    while($row = $result->fetch_assoc()) {
    	echo '
    	<tr>
    	<td colspan="2">
    	';
    	
    	echo '<a href="dances.php?id='. $row["dance_id"] .'&sort=telugu" style="display: block">';
    	if ($row["dance_telugu_name"] == ""){
    		echo "పేరులేని";
    		echo '</a>';
    	}
    	else{
    		echo $row["dance_telugu_name"];
    		echo '</a>';
    	}

    	echo '
    	</td>
    	</tr>
    	';
    }

    	echo '</table>';
	}

    else {
    echo '0 results';
	}


?>