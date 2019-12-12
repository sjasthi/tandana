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

	$sql = "SELECT dance_id, dance_english_name, dance_telugu_name, dance_alternate_name, dance_origin, dance_key_words, dance_category, dance_status, dance_image_reference, dance_video_reference, artist_images, links, dance_description FROM dances";
	$result = $conn->query($sql);

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
    $artist_reference_array = [];
    $links_reference_array = [];


    $submitted_count = 0;
    $selected_count = 0;
    $progress_count = 0;
    $done_count = 0;

    $folk_count = 0;
    $classical_count = 0;
    $traditional_count = 0;
    $other_count = 0;

    $images_count = 0;
    $videos_count = 0;
    $links_count = 0;
    $artist_images_count = 0;

if(isset($_SESSION['username'])){
	if ($result->num_rows > 0) {

    while($row = $result->fetch_assoc()) {

        $image_reference_array = explode(',', $row["dance_image_reference"]);
        $video_reference_array = explode(',', $row["dance_video_reference"]);
        $artist_reference_array = explode(',', $row["artist_images"]);
        $links_reference_array = explode(',', $row["links"]);

        if(strtolower($row["dance_status"]) == 'submitted'){
            $submitted_count++;
        }
        if(strtolower($row["dance_status"]) == 'selected'){
            $selected_count++;
        }
        if(strtolower($row["dance_status"]) == 'in progress'){
            $progress_count++;
        }
        if(strtolower($row["dance_status"]) == 'done'){
            $done_count++;
        }

        if(strtolower($row["dance_category"]) == 'folk'){
            $folk_count++;
        }
        if(strtolower($row["dance_category"]) == 'classical'){
            $classical_count++;
        }
        if(strtolower($row["dance_category"]) == 'traditional'){
            $traditional_count++;
        }
        if(strtolower($row["dance_category"]) == 'other'){
            $other_count++;
        }


        for ($i = 0; $i < sizeof($image_reference_array); $i++){
            if($image_reference_array[$i] != ""){
                $images_count++;
            }
        }
        for ($i = 0; $i < sizeof($video_reference_array); $i++){
            if($video_reference_array[$i] != ""){
                $videos_count++;
            }
        }
        for ($i = 0; $i < sizeof($links_reference_array); $i++){
            if($links_reference_array[$i] != ""){
                $links_count++;
            }
        }
        for ($i = 0; $i < sizeof($artist_reference_array); $i++){
            if($artist_reference_array[$i] != ""){
                $artist_images_count++;
            }
        }
    }

            echo '
        <div class="container report_chart top_space">
        <table border="0" cellpadding="0" cellspacing="0" style="margin:0 auto;">
            <tr>
                <td>
                    <table class="report_wrapper" border="0" cellpadding="0" cellspacing="0">
                        <tr>
                            <td class="header_col" valign="top">By Status</td>
                            <td class="col2_col3">
                                <table border="0" cellpadding="0" cellspacing="0" width="200" style="width:200px;">
                                    <tr>
                                        <td class="header_row">Status</td>
                                        <td class="header_row">Count</td>
                                    </tr>
                                    <tr>
                                        <td class="odd_row">Submitted</td>
                                        <td class="odd_row">'. $submitted_count .'</td>
                                    </tr>
                                    <tr>
                                        <td class="even_row">Selected</td>
                                        <td class="even_row">'. $selected_count .'</td>
                                    </tr>
                                    <tr>
                                        <td class="odd_row">In Progress</td>
                                        <td class="odd_row">'. $progress_count .'</td>
                                    </tr>
                                    <tr>
                                        <td class="even_row">Done</td>
                                        <td class="even_row">'. $done_count .'</td>
                                    </tr>
                                </table>
                            </td>
                            <td>
                                <div id="piechart1" style="width: 400px; height: 400px;"></div>
                            </td>
                        </tr>
                    </table>
                    <table class="report_wrapper" border="0" cellpadding="0" cellspacing="0">
                        <tr>
                            <td class="header_col" valign="top">By Category</td>
                            <td class="col2_col3">
                                <table border="0" cellpadding="0" cellspacing="0" width="200" style="width:200px;">
                                    <tr>
                                        <td class="header_row" class="header_row">Status</td>
                                        <td class="header_row">Count</td>
                                    </tr>
                                    <tr>
                                        <td class="odd_row">Folk</td>
                                        <td class="odd_row">'. $folk_count .'</td>
                                    </tr>
                                    <tr>
                                        <td class="even_row">Classical</td>
                                        <td class="even_row">'. $classical_count .'</td>
                                    </tr>
                                    <tr>
                                        <td class="odd_row">Traditional</td>
                                        <td class="odd_row">'. $traditional_count .'</td>
                                    </tr>
                                    <tr>
                                        <td class="even_row">Other</td>
                                        <td class="even_row">'. $other_count .'</td>
                                    </tr>
                                </table>
                            </td>
                            <td>
                                <div id="piechart2" style="width: 400px; height: 400px;"></div>
                            </td>
                        </tr>
                    </table>
                    <table class="report_wrapper" border="0" cellpadding="0" cellspacing="0">
                        <tr>
                            <td class="header_col" valign="top">Summary</td>
                            <td class="col2_col3">
                                <table border="0" cellpadding="0" cellspacing="0" width="200" style="width:200px;">
                                <tr>
                                    <td class="header_row">Status</td>
                                    <td class="header_row">Count</td>
                                </tr>
                                <tr>
                                    <td class="odd_row">Images</td>
                                    <td class="odd_row">'. $images_count .'</td>
                                </tr>
                                <tr>
                                    <td class="even_row">Videos</td>
                                    <td class="even_row">'. $videos_count .'</td>
                                </tr>
                                <tr>
                                    <td class="odd_row">Links</td>
                                    <td class="odd_row">'. $links_count .'</td>
                                </tr>
                                <tr>
                                    <td class="even_row">Artist Images</td>
                                    <td class="even_row">'. $artist_images_count .'</td>
                                </tr>
                                </table>
                            </td>
                            <td>
                                <div id="piechart3" style="width: 400px; height: 400px;"></div>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
        </div>
        ';

    }

    else{
    	echo "0 results";
    }
}

else {
echo "<b>Please login as an admin.</b>";
}

?>
<br>
<footer>
<?php include 'footer.php'; ?>
</footer>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load('current', {'packages':['corechart']});
      google.charts.setOnLoadCallback(drawStatusChart);
      google.charts.setOnLoadCallback(drawCategoryChart);
      google.charts.setOnLoadCallback(drawSummaryChart);

      function drawStatusChart() {

        var data1 = google.visualization.arrayToDataTable([
          ['Report', 'Breakdown'],
          ['Submitted', <?php echo $submitted_count?>],
          ['Selected', <?php echo $selected_count?>],
          ['Progress', <?php echo $progress_count?>],
          ['Done', <?php echo $done_count?>]
        ]);

        var options1 = {
          title: 'Status'
        };

        var chart = new google.visualization.PieChart(document.getElementById('piechart1'));
        chart.draw(data1, options1);
      }

      function drawCategoryChart(){
        var data2 = google.visualization.arrayToDataTable([
          ['Report', 'Breakdown'],
          ['Folk', <?php echo $folk_count?>],
          ['Classical',    <?php echo $classical_count?>],
          ['Traditional', <?php echo $traditional_count?>],
          ['Other',<?php echo $other_count?>]
        ]);

        var options2 = {
          title: 'Category'
        };

        var chart = new google.visualization.PieChart(document.getElementById('piechart2'));
        chart.draw(data2, options2);

      }

      function drawSummaryChart(){
        var data3 = google.visualization.arrayToDataTable([
          ['Report', 'Breakdown'],
          ['Images', <?php echo $images_count?>],
          ['Videos', <?php echo $videos_count?>],
          ['Links', <?php echo $links_count?>],
          ['Artist Images', <?php echo $artist_images_count?>]
        ]);

        var options3 = {
          title: 'Summary'
        };

        var chart = new google.visualization.PieChart(document.getElementById('piechart3'));
        chart.draw(data3, options3);
      }

    $(document).ready(function() {
        $('.navbar-nav li').removeClass('active');
        $('.navbar-nav li.page_admin').addClass('active');
    });
</script>
</body>
</html>