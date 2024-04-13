<?php include 'navigation.php';
require_once('db_configuration.php');

if(!isset($_SESSION)) 
    { 
        session_start(); 
    } 

if(isset($_SESSION['username'])){

    echo 
    '
    <div class="container top_space"  >
    <center>
    <table>
    <tr>
    <td style="padding: 40px">
        <center>
        <a href="compile.php">
        <img src="assets/images/13.png" width="150px" height="150px"/>
        <br>
        Compile
        </a>
        </center>
    </td>
    <td style="padding: 40px">
        <center>
        <a href="html.php" target="_blank">
        <img src="assets/images/11.png" width="150px" height="150px"/>
        <br>
        HTML
        </a>
        </center>
    </td>
    <td style="padding: 40px">
        <center>
        <a href="create_dances.php">
        <img src="assets/images/14.png" width="150px" height="150px"/>
        <br>
        Add Dances
        </a>
        </center>
    </td>
    <td style="padding: 40px">
        <center>
        <a href="profile.php">
        <img src="assets/images/3.png" width="150px" height="150px"/>
        <br>
        Users
        </a>
        </center>
    </td>
    <td style="padding: 40px">
        <center>
        <a href="report.php">
        <img src="assets/images/12.png" width="150px" height="150px"/>
        <br>
        Report
        </a>
        </center>
    </td>
    </tr>
    <tr>
    <td style="padding: 40px">
        <center>
        <a href="export.php">
        <img src="assets/images/9.png" width="150px" height="150px"/>
        <br>
        Export
        </a>
        </center>
    </td>
    <td style="padding: 40px">
        <center>
        <a href="import.php">
        <img src="assets/images/8.png" width="150px" height="150px"/>
        <br>
        Import
        </a>
        </center>
    </td>
    <td style="padding: 40px">
        <center>
        <a href="contents.php">
        <img src="assets/images/7.png" width="150px" height="150px"/>
        <br>
        Contents
        </a>
        </center>
    </td>
    <td style="padding: 40px">
        <center>
        <a href="images.php">
        <img src="assets/images/6.png" width="150px" height="150px"/>
        <br>
        Images
        </a>
        </center>
    </td>
    <td style="padding: 40px">
        <center>
        <a href="videos.php">
        <img src="assets/images/5.png" width="150px" height="150px"/>
        <br>
        Videos
        </a>
        </center>
    </td>
    <td style="padding: 40px">
        <center>
        <a href="configure_edit.php">
        <img src="assets/images/2.png" width="150px" height="150px"/>
        <br>
        Configure
        </a>
        </center>
    </td>
    <tr>
    <td style="padding: 40px">
        <center>
        <a href="create_resources.php">
        <img src="assets/images/4.png" width="150px" height="150px"/>
        <br>
        Create Resources
        </a>
        </center>
    </td>
    <td style="padding: 40px">
        <center>
        <a href="Resources.php">
        <img src="assets/images/4.png" width="150px" height="150px"/>
        <br>
        Resources
        </a>
        </center>
    </td>
    <td style="padding: 40px">
        <center>
        <a href="create_artists.php">
        <img src="assets/images/10.png" width="150px" height="150px"/>
        <br>
        Create Artist
        </a>
        </center>
    </td>
    <td style="padding: 40px">
    <center>
    <a href="manage_dances.php">
    <img src="assets/images/1.png" width="150px" height="150px"/>
    <br>
    Manage Dances
    </a>
    </center>
    </td>
    </td>
    </tr>
    </tr>
    </center>
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

<script type="text/javascript">
    $(document).ready(function() {
        $('.navbar-nav li').removeClass('active');
        $('.navbar-nav li.page_admin').addClass('active');
    });
</script>
<style type="text/css">
	.container {
    padding-top: 0 !important; 
    position: relative; 
    top: 0 !important; 
}
</style>
</body>
</html>