<?php
$conn = new mysqli("localhost","thisitz6_tandana" ,"Pittaladora!23" , "thisitz6_tana_tandana");        
if ($conn->connect_error) {
    die('Connect Error (' . $conn->connect_errno . ') '
            . $conn->connect_error);
}
$id_to_delete=$_GET['id'];
$fetch = mysqli_query($conn,'DELETE FROM Resources WHERE ID='.$id_to_delete)or
die(mysqli_error($conn));
header('Location: Resources.php');
?>