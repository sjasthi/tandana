<?php
include 'navigation.php';
require_once('db_configuration.php');


if(!isset($_SESSION)) 
    { 
        session_start(); 
    } 

echo '
<div class="container top_space">
';

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

if (empty($_POST)){
    echo 'No performances selected.';
}

else{

if(isset($_SESSION['username'])){


if (!empty($_POST['copyright_c'])){
    $copyright_c = $_POST['copyright_c'];
}
if (!empty($_POST['export_c'])){
    $export_c = $_POST['export_c'];
}
if (!empty($_POST['header_c'])){
    $header_c = $_POST['header_c'];
}

if (!empty($_POST['english_radio_order'])){
    $english_c = $_POST['english_radio_order'];
}

if (!empty($_POST['telugu_radio_order'])){
    $telugu_c = $_POST['telugu_radio_order'];
}

if (!empty($_POST['homepage_show_total'])){
    $homepage_show_total_c = $_POST['homepage_show_total'];
}

if (!empty($_POST['homepage_show_per_row'])){
    $homepage_show_per_row_c = $_POST['homepage_show_per_row'];
}

if (!empty($_POST['default_radio_order'])){
    $default_radio_c = $_POST['default_radio_order'];
}

    $myfile = fopen("configure.php", "w") or die ("Unable to open file.");
    $txt = "
    <?php
    DEFINE('copyright', '".$copyright_c."');
    DEFINE('export_file_name', '".$export_c."');
    DEFINE('header_image', '".$header_c."');
    DEFINE('telugu_menu_order', '".$english_c."');
    DEFINE('english_menu_order', '".$telugu_c."');
    DEFINE('homepage_show_total', '".$homepage_show_total_c."');
    DEFINE('homepage_show_per_row', '".$homepage_show_per_row_c."');
    DEFINE('default_language', '".$default_radio_c."');
    ?>";

    fwrite($myfile, $txt);
    fclose($myfile);

}

else{
    echo 'Please log in as an admin.';
}
echo '
  <h3>Database Configured!</h3>
  <a href="index.php">Return to Home.</a>
  ';
} // End if statement of user session

?>
<footer>
<?php include 'footer.php'; ?>
</footer>   
</body>
</html>