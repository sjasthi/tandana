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

$copyright = copyright;
$export_file_name = export_file_name;
$header_image = header_image;
$telugu_menu_order = telugu_menu_order;
$english_menu_order = english_menu_order;
$homepage_show_total = homepage_show_total;
$homepage_show_per_row = homepage_show_per_row;
$default_language = default_language;

// Create connection
$conn = new mysqli($servername, $db_username, $db_password, $database);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
// echo "Connected successfully<br>";
$conn->set_charset("utf8");


if(isset($_SESSION['username'])){

            echo '
        <div class="container report_chart top_space">
        <table border="0" cellpadding="0" cellspacing="0" style="margin:0 auto;">
            <tr>
                <td>
                    <table class="report_wrapper" border="0" cellpadding="0" cellspacing="0">
                        <tr>
                            <td class="col2_col3">
                                <table border="0" cellpadding="0" cellspacing="0" width="200" style="width:200px;">
                                    <tr>
                                        <td class="header_row">Name</td>
                                        <td class="header_row">Value</td>
                                    </tr>
                                    <tr>
                                        <td class="odd_row">Copyright</td>
                                        <td class="odd_row">'. $copyright .'</td>
                                    </tr>
                                    <tr>
                                        <td class="even_row">Exported_file_name</td>
                                        <td class="even_row">'. $export_file_name .'</td>
                                    </tr>
                                    <tr>
                                        <td class="odd_row">Header_image</td>
                                        <td class="odd_row">'. $header_image .'</td>
                                    </tr>
                                    <tr>
                                        <td class="even_row">Telugu_menu_order</td>
                                        <td class="even_row">'. $telugu_menu_order .'</td>
                                    </tr>
                                    <tr>
                                        <td class="even_row">English_menu_order</td>
                                        <td class="even_row">'. $english_menu_order .'</td>
                                    </tr>
                                </table>
                        </tr>
                    </table>

            <form class="configure_form" action="configure_submitted.php" method="post" enctype="multipart/form-data">
            <label>Copyright Message</label>
            <br>
            <input type="text" name="copyright_c" id="copyright_c" value="'.$copyright.'">
            <br>
            <br>
            <label>File name for Excel Export</label>
            <br>
            <input type="text" name="export_c" id="export_c" value="'.$export_file_name.'">
            <br>
            <br>
            <label>HEADER image</label>
            <br>
            <input type="text" name="header_c" id="header_c" value="'.$header_image.'">
            <br>
            <br>
            <label>For English, use </label>
            ';
             if ($english_menu_order == "numerical"){
                echo '<input type="radio" name="english_radio_order" value="numerical" checked>Numerical
                <input type="radio" name="english_radio_order" value="alphabetical">Alphabetical';
            }

            else{
                echo '<input type="radio" name="english_radio_order" value="numerical">Numerical
                <input type="radio" name="english_radio_order" value="alphabetical" checked>Alphabetical';
            }
            echo '
            <br>
            <label>For Telugu, use </label>';
            if ($telugu_menu_order == "numerical"){
                echo '<input type="radio" name="telugu_radio_order" value="numerical" checked>Numerical
                <input type="radio" name="telugu_radio_order" value="alphabetical">Alphabetical';
            }

            else{
                echo '<input type="radio" name="telugu_radio_order" value="numerical">Numerical
                <input type="radio" name="telugu_radio_order" value="alphabetical" checked>Alphabetical';
            }

            echo'
            <br>
            <h3>HOME screen configuration</h3>
            <label>Number of items to show on the Homepage: </label>
            <br>
            <input type="text" name="homepage_show_total" id="homepage_show_total" value="'.$homepage_show_total.'">
            <br>
            <br>
            <label>Number of items to show per row: </label>
            <br>
            <input type="text" name="homepage_show_per_row" id="homepage_show_per_row" value="'.$homepage_show_per_row.'">
            <br>
            <br>
            <label>Language to be displayed below the image: </label>
            ';

            if($default_language == "telugu"){
                echo '<input type="radio" name="default_radio_order" value="telugu" checked>Telugu
                <input type="radio" name="default_radio_order" value="english">English';
            }
            else{
                echo '<input type="radio" name="default_radio_order" value="telugu">Telugu
                <input type="radio" name="default_radio_order" value="english" checked>English';
            }

            echo '
            <br>
            <br>
            <input type="submit" value="Update" name="submit">
        </form>

        </div>
        ';

    }

else {
echo "<b>Please login as an admin.</b>";
}

?>
<br>
<footer>
<?php include 'footer.php'; ?>
</footer>
<style type="text/css">
	.container {
    padding-top: 0 !important; 
    position: relative; 
    top: 0 !important; 
}
</style>
<script type="text/javascript">
    $(document).ready(function() {
        $('.navbar-nav li').removeClass('active');
        $('.navbar-nav li.page_admin').addClass('active');
    });
</script>
</body>
</html>