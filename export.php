<?php
include 'configure.php';
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


if(null !== export_file_name){
    $export_file_name = export_file_name;
}
else{
    $export_file_name = 'Dances_Exported.xlsx';
}


// Create connection
$conn = new mysqli($servername, $db_username, $db_password, $database);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
// echo "Connected successfully<br>";
$conn->set_charset("utf8");

$sql = "SELECT dance_id, dance_english_name, dance_alternate_name, dance_telugu_name, dance_category, dance_origin, dance_description, dance_image_reference, dance_video_reference, dance_key_words, dance_status, artist_images, links FROM dances";

$result = $conn->query($sql);

$lineCount = 2;


if(isset($_SESSION['username'])){

/** Error reporting */
error_reporting(E_ALL);
ini_set('display_errors', TRUE);
ini_set('display_startup_errors', TRUE);
date_default_timezone_set('CST6CDT');

if (PHP_SAPI == 'cli')
    die('This example should only be run from a Web Browser');

/** Include PHPExcel */
require_once dirname(__FILE__) . '/Classes/PHPExcel.php';

// Create new PHPExcel object
$objPHPExcel = new PHPExcel();

// Set document properties
$objPHPExcel->getProperties()->setCreator("Kou Vang")
                             ->setLastModifiedBy("Kou Vang")
                             ->setTitle("Office 2007 XLSX Dances Document")
                             ->setSubject("Office 2007 XLSX Dances Document")
                             ->setDescription("Test document for Office 2007 XLSX, generated using PHP classes.")
                             ->setKeywords("office 2007 openxml php")
                             ->setCategory("Test result file");

// // Add some data
// $objPHPExcel->setActiveSheetIndex(0)
//             ->setCellValue('A1', 'Hello')
//             ->setCellValue('B2', 'world!')
//             ->setCellValue('C1', 'Hello')
//             ->setCellValue('D2', 'world!');

// // Miscellaneous glyphs, UTF-8
// $objPHPExcel->setActiveSheetIndex(0)
//             ->setCellValue('A4', 'Miscellaneous glyphs')
//             ->setCellValue('A5', 'éàèùâêîôûëïüÿäöüç');


// Format Cells to auto-width
foreach(range('A','M') as $columnID) {
    $objPHPExcel->getActiveSheet()->getColumnDimension($columnID)
        ->setAutoSize(true);
}

$objPHPExcel->setActiveSheetIndex(0)
            ->setCellValue('A1', 'dance_id')
            ->setCellValue('B1', 'dance_english_name')
            ->setCellValue('C1', 'dance_alternate_name')
            ->setCellValue('D1', 'dance_telugu_name')
            ->setCellValue('E1', 'dance_category')
            ->setCellValue('F1', 'dance_origin')
            ->setCellValue('G1', 'dance_description')
            ->setCellValue('H1', 'dance_image_reference')
            ->setCellValue('I1', 'dance_video_reference')
            ->setCellValue('J1', 'dance_key_words')
            ->setCellValue('K1', 'dance_status')
            ->setCellValue('L1', 'artist_images')
            ->setCellValue('M1', 'links');



    if ($result->num_rows > 0) {
            while($row = $result->fetch_assoc()) {
$objPHPExcel->setActiveSheetIndex(0)
            ->setCellValue('A'.$lineCount, $row['dance_id'])
            ->setCellValue('B'.$lineCount, $row['dance_english_name'])
            ->setCellValue('C'.$lineCount, $row['dance_alternate_name'])
            ->setCellValue('D'.$lineCount, $row['dance_telugu_name'])
            ->setCellValue('E'.$lineCount, $row['dance_category'])
            ->setCellValue('F'.$lineCount, $row['dance_origin'])
            ->setCellValue('G'.$lineCount, $row['dance_description'])
            ->setCellValue('H'.$lineCount, $row['dance_image_reference'])
            ->setCellValue('I'.$lineCount, $row['dance_video_reference'])
            ->setCellValue('J'.$lineCount, $row['dance_key_words'])
            ->setCellValue('K'.$lineCount, $row['dance_status'])
            ->setCellValue('L'.$lineCount, $row['artist_images'])
            ->setCellValue('M'.$lineCount, $row['links']);
            $lineCount++;
            }
    }

// Rename worksheet
$objPHPExcel->getActiveSheet()->setTitle('dances');


// Set active sheet index to the first sheet, so Excel opens this as the first sheet
$objPHPExcel->setActiveSheetIndex(0);


// Redirect output to a client’s web browser (Excel2007)
header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
header('Content-Disposition: attachment;filename="'.$export_file_name.'"');
header('Cache-Control: max-age=0');
// If you're serving to IE 9, then the following may be needed
header('Cache-Control: max-age=1');

// If you're serving to IE over SSL, then the following may be needed
header ('Expires: Mon, 26 Jul 1997 05:00:00 GMT'); // Date in the past
header ('Last-Modified: '.gmdate('D, d M Y H:i:s').' GMT'); // always modified
header ('Cache-Control: cache, must-revalidate'); // HTTP/1.1
header ('Pragma: public'); // HTTP/1.0

$objWriter = PHPExcel_IOFactory::createWriter($objPHPExcel, 'Excel2007');
$objWriter->save('php://output');
exit;

}

else {
echo "<b>Please login as an admin.</b>";
}

?>