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

                    // Print table of contents
                    $sql = "SELECT dance_id, dance_english_name, dance_telugu_name, dance_image_reference, dance_video_reference, artist_images FROM dances ORDER BY dance_id";
                    $table_of_contents = $conn->query($sql);

                    echo '
                        <div class="col-md-12 dances_display top_space">
                            <table class="compile_table" border="0" cellpadding="0" cellspacing="0">
                                <tr>
                                    <th>ID</th>
                                    <th>Thumbnail</th>
                                    <th>English Name</th>
                                    <th>Telegu Name</th>
                                </tr>
                                <tr>
                    ';
                    if($table_of_contents ->num_rows > 0){
                        while($row = $table_of_contents->fetch_assoc()){
                            // echo 'ID: ' . $row["dance_id"] . ' - ' . $row["dance_english_name"] .' - ' . $row["dance_telugu_name"] . '<br>';
                            echo '
                                <tr class="compile_rows">
                                    <td>'. $row["dance_id"] .'</td>
                                    <td>';

                                    if ($row["artist_images"] != ""){
                                    $ext_array = explode(',', $row["artist_images"]);   // Explode file name from comma
                                    echo '<img src="'.$ext_array[0].'" height="100px" width="100px">';
                                    }
                                    else if ($row["dance_image_reference"] != ""){
                                        $exp_array = explode(',', $row["dance_image_reference"]);
                                        echo '<img src="'.$exp_array[0].'" height="100px" width="100px">';
                                    }
                                    else{
                                        echo '<img src="assets/images/100x100.png" height="100px" width="100px">';
                                    }

                            echo'
                                    </td>
                                    <td>'. $row["dance_english_name"] .'</td>
                                    <td>'. $row["dance_telugu_name"] .'</td>
                                </tr>
                            ';
                        }
                    }
                    else{
                   echo "0 results";
                     }

                    echo'
                            </table>
                        </div>
                    <br>
                    ';


                

}

else {
echo "<b>Only admins can update.</b>";
}

?>
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