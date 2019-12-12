<?php
include 'navigation.php';
require_once('db_configuration.php');
require_once dirname(__FILE__) . '/Classes/DB.php';
require_once dirname(__FILE__) . '/Classes/PHPExcel.php';

echo '<div class="container top_space">';

$target_dir = "assets/imports/";
$target_file = $target_dir . basename($_FILES["fileToUpload"]["name"]);
$uploadOk = 1;
$fileType = pathinfo($target_file,PATHINFO_EXTENSION);
// Check if image file is a actual image or fake image
if(isset($_POST["submit"])) {
    // $check = getimagesize($_FILES["fileToUpload"]["tmp_name"]);
    // if($check !== false) {
    //     echo "File is an image - " . $check["mime"] . ".";
    //     $uploadOk = 1;
    // } else {
    //     echo "File is not an image.";
    //     $uploadOk = 0;
    // }
}


// Allow certain file formats
if($fileType != "xlsx" && $fileType != "XLSX") {
    echo "Sorry, only xlsx files are allowed.";
    $uploadOk = 0;
}
// Check if $uploadOk is set to 0 by an error
if ($uploadOk == 0) {
    echo "Sorry, your file was not uploaded.";
// if everything is ok, try to upload file
} else {
    if (move_uploaded_file($_FILES["fileToUpload"]["tmp_name"], $target_file)) {
        echo "The file ". basename( $_FILES["fileToUpload"]["name"]). " has been successfully imported.";
    } else {
        echo "Sorry, there was an error uploading your file.";
    }


$objPHPExcel = PHPExcel_IOFactory::load($target_file);
 
$dataArr = array();
 
foreach ($objPHPExcel->getWorksheetIterator() as $worksheet) {
    $worksheetTitle     = $worksheet->getTitle();
    $highestRow         = $worksheet->getHighestRow(); // e.g. 10
    $highestColumn      = $worksheet->getHighestColumn(); // e.g 'F'
    $highestColumnIndex = PHPExcel_Cell::columnIndexFromString($highestColumn);
     
    for ($row = 1; $row <= $highestRow; ++ $row) {
        for ($col = 0; $col < $highestColumnIndex; ++ $col) {
            $cell = $worksheet->getCellByColumnAndRow($col, $row);
            $val = $cell->getValue();
            $dataArr[$row][$col] = $val;
        }
    }
}

unset($dataArr[1]); // since in our example the first row is the header and not the actual data

if(!isset($_SESSION)) 
    { 
        session_start(); 
    } 

// Establishing Connection with Server
$servername = DATABASE_HOST;
$db_username = DATABASE_USER;
$db_password = DATABASE_PASSWORD;
$database = DATABASE_DATABASE;

// Create connection
$conn = new mysqli($servername, $db_username, $db_password, $database);


// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $db->connect_error);
}

// else{
//   echo "Connected successfully<br>";
// }

$conn->set_charset("utf8");

$db = $conn;

if(isset($_SESSION['username'])){
// BEGIN RECREATING TABLE
  $sql_drop = "DELETE FROM dances";

  if(mysqli_query($db, $sql_drop)) {  
            // echo "Table is deleted successfully";  


  $sql_auto = "ALTER TABLE `dances`
  MODIFY `dance_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1";

  if(mysqli_query($db, $sql_auto)) {  
            // echo "Auto-Increment reset"; 
  } 

  else {  
            echo "Auto-Increment reset error\n";
  } 

foreach($dataArr as $val){
    $query = $db->query("INSERT INTO dances SET dance_english_name = '" . mysqli_real_escape_string($db,($val['1'])) . "', dance_alternate_name = '" . mysqli_real_escape_string($db,($val['2'])) . "', dance_telugu_name = '" . mysqli_real_escape_string($db,($val['3'])) . "', dance_category = '" . mysqli_real_escape_string($db,($val['4'])) . "', dance_origin = '" . mysqli_real_escape_string($db,($val['5'])) . "', dance_description = '" . mysqli_real_escape_string($db,($val['6'])) . "', dance_image_reference = '" . mysqli_real_escape_string($db,($val['7'])) . "', dance_video_reference = '" . mysqli_real_escape_string($db,($val['8'])) . "', dance_key_words = '" . mysqli_real_escape_string($db,($val['9'])) . "', dance_status = '" . mysqli_real_escape_string($db,($val['10'])) . 
      "', artist_images = '" . mysqli_real_escape_string($db,($val['11'])) . "', links = '" . mysqli_real_escape_string($db,($val['12'])) . "'");
}
  } 

  else {  
            echo "Table delete unsuccessful\n";
  } 
}

else {
echo "<b>Please login as an admin.</b>";
}

echo'</div>';
}

?>

<br><div id="profile">
<a href="index.php">Return to Home.</a>
</div>
<footer>
<?php include 'footer.php'; ?>
</footer>
</body>
</html>