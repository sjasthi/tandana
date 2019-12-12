<?php
require_once('db_configuration.php');
require_once ('mpdf/mpdf.php');
?>

<html>
<head>
<title>Dances</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="styles.css">
</head>
<body>

<?php
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

        $sql = "SELECT dance_id, dance_english_name, dance_alternate_name, dance_telugu_name, dance_category, dance_origin, dance_description, dance_image_reference, dance_video_reference, dance_key_words, dance_status, artist_images FROM dances WHERE dance_status = 'done' ORDER BY dance_id";
        $result = $conn->query($sql);

            // $html = file_get_contents("assets/pdf/front.html");

        if(isset($_SESSION['username'])){
            $mpdf = new mPDF('UTF-8');
            $stylesheet = file_get_contents('styles.css');
            $mpdf->WriteHTML($stylesheet,1);
            $mpdf->autoScriptToLang = true;
            $mpdf->baseScript = 1;
            $mpdf->autoLangToFont = true;

            $mpdf->WriteHTML('
                <center>
                    <img src="assets/pdf/front.jpg" />
                </center>
                ');

            $mpdf->addPage();
            $mpdf->addPage();

            $html_front = file_get_contents('assets/pdf/front.html');
            $mpdf->WriteHTML($html_front);

            $mpdf->addPage();
            $mpdf->addPage();

                    // Print table of contents
                    $sql = "SELECT dance_id, dance_english_name, dance_telugu_name, dance_status, dance_image_reference, dance_video_reference, artist_images FROM dances WHERE dance_status = 'done' ORDER BY dance_id";
                    $table_of_contents = $conn->query($sql);

                    $mpdf->WriteHTML('
                        <div class="col-md-12 dances_display">
                            <table class="compile_table" border="0" cellpadding="0" cellspacing="0">
                                <tr>
                                    <th>ID</th>
                                    <th>Thumbnail</th>
                                    <th>English Name</th>
                                    <th>Telegu Name</th>
                                </tr>
                                <tr>
                        ');
                    if($table_of_contents ->num_rows > 0){
                        while($row = $table_of_contents->fetch_assoc()){
                             $mpdf->WriteHTML(
                                '<tr class="compile_rows">
                                    <td>'. $row["dance_id"] .'</td>
                                    <td>');

                                     if ($row["artist_images"] != ""){
                                        if(isset($artist_images_set) && $artist_images_set == TRUE){
                                        $ext_array = explode(',', $row["artist_images"]);   // Explode file name from comma
                                        $mpdf->WriteHTML( '<img src="'.$ext_array[0].'" height="100px" width="100px">' );
                                        }
                                        else{
                                        $mpdf->WriteHTML( '<img src="assets/images/100x100.png" height="100px" width="100px"> ');
                                        }
                                    }
                                    else if ($row["dance_image_reference"] != ""){
                                        if (isset($internet_images_set) && $internet_images_set == TRUE){
                                        $exp_array = explode(',', $row["dance_image_reference"]);
                                        $mpdf->WriteHTML( '<img src="'.$exp_array[0].'" height="100px" width="100px"> ');
                                        }
                                        else{
                                        $mpdf->WriteHTML( '<img src="assets/images/100x100.png" height="100px" width="100px"> ');
                                        }
                                    }
                                    else{
                                        $mpdf->WriteHTML( '<img src="assets/images/100x100.png" height="100px" width="100px"> ');
                                    }


                            $mpdf->WriteHTML('
                                    </td>
                                    <td>'. $row["dance_english_name"] .'</td>
                                    <td>'. $row["dance_telugu_name"] .'</td>
                                </tr>'
                                );
                        }
                    }
                    $mpdf->WriteHTML('</table>
                        </div>');

            $mpdf->addPage();
            $mpdf->addPage();

             if ($result->num_rows > 0) {
                    while($row = $result->fetch_assoc()) {
                // Grab dance ID
                $dance_id = $row["dance_id"];
          //    $dance_english_name = $_row["dance_english_name"];
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
                $artist_reference_array = explode(',', $row["artist_images"]);

                $mpdf->writeHTML('
                    <div class="col-md-12 dances_display">
                    <div class="dance_display_description">
                    <div class="dance_display_description_row1">
                        <div class="wrapper" style="float:left; width:100px; padding:10px;">
                            <div class="dance_id"><div>
                            <!-- Dance ID -->
                            '. $row['dance_id'].'
                            </div></div>
                        </div>
                        <div class="wrapper_pdf" style="float:left; width:500px; height:60px; padding-top:30px 0 0 0;">
                            <p class="dance_english_name" style="font-size:26px; line-height:30px; text-align:center;">
                            <!-- Dance Name in English Input -->
                            '. $row['dance_english_name'].'
                            </p>
                            <p class="dance_telugu_name" style="font-size:26px; line-height:30px; text-align:center;">
                            <!-- Dance Name in Telugu Input --> 
                            '. $row['dance_telugu_name'].'
                            </p>
                        </div>
                    </div>
                    <table class="dance_display_description_row2" border="0" cellpadding="0" cellspacing="0">
                        <tr>
                            <td align="center" class="dance_origin" style="border-right:1px solid black; padding:10px 0;">
                            <!-- Dance Origin Input -->
                            Origin: 
                            '. $row['dance_origin'].'
                            </td>
                            <td align="center" class="dance_category" style="padding:10px 0;">
                            <!-- Dance Category Input -->
                            Category: 
                            '. $row['dance_category'].'
                            </td>
                        </tr>
                    </table>
                    <div class="dance_display_description_row3" style="text-align:center; padding:10px 0;">
                    <p class="dance_alternate_name">
                    Alternate Names: 
                    '. $row['dance_alternate_name'].'
                    </p>
                    </div>
                    </div>');

                    $mpdf->writeHTML('
                    <table border="0" cellpadding="0" cellspacing="0" width="100%">
                    <tr><td align="center" style="padding:10px 0 0;">
                    ');


                    if($artist_reference_array[0] == "" && $artist_reference_array[0] ==""){
                        $mpdf->writeHTML('<img src="assets/images/500x400.png" width="500" height="400" style="padding-bottom:10px; margin:0 auto; display:block;">
                                 ');
                    }

                    else{
                        for ($i = 0; $i < sizeof($artist_reference_array); $i++){
                        $mpdf->writeHTML('<img src="' . $artist_reference_array[$i]. '" width="500" height="400" style="padding-bottom:10px; margin:0 auto; display:block;">
                                 ');
                        }
                    }
                    
                     $mpdf->writeHTML('
                        </td></tr>
                    </table>
                    ');
                    
                    $dance_spacing = nl2br($row["dance_description"]);
                    $mpdf->writeHTML('<br>');
                    $mpdf->writeHTML($dance_spacing);

                    $mpdf->addPage();

                    }
             }

            $mpdf->addPage();

            $html_back = file_get_contents('assets/pdf/back.html');
            $mpdf->WriteHTML($html_back);

            $mpdf->addPage();
            $mpdf->addPage();

             $mpdf->WriteHTML('
                <center>
                    <img src="assets/pdf/back.jpg" />
                </center>
                ');

            $mpdf->Output();
        
    }

?>
</body>
</html>