<?php
if(isset($_POST['submit'])){
// Fetching variables of the form which travels in URL
$lang_type = $_POST['lang_type'];
$lang_filter_type = $_POST['lang_filter_type'];
$dance_type = $_POST['dance_type'];
$dance_filter_type = $_POST['dance_filter_type'];
if($lang_type !=''&& $lang_filter_type !=''&& $dance_type !=''&& $dance_filter_type !='')
{
//  To redirect form on a particular page
header("Location:index.php");
die();
}
}
?>