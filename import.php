<?php include 'navigation.php';
require_once('db_configuration.php');

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
    die("Connection failed: " . $conn->connect_error);
}
// echo "Connected successfully<br>";
$conn->set_charset("utf8");

if(isset($_SESSION['username'])){
 echo'
    <div class="container top_space">
    <form action="import_action.php" method="post" enctype="multipart/form-data">
    Select a file to upload:
    <input type="file" name="fileToUpload" id="fileToUpload">
    <input type="submit" value="Upload File" name="submit">
    </form>
    </div>
  ';

}

else {
echo "<b>Only admins can update.</b>";
}

?>
<br><div id="profile">
<a href="index.php">Return to Home.</a>
</div>
<footer>
<?php include 'footer.php'; ?>
</footer>

<script type="text/javascript">
    $(document).ready(function() {
        $('.navbar-nav li').removeClass('active');
        $('.navbar-nav li.page_admin').addClass('active');
    });
</script>
</body>
</html>