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

	$sql = "SELECT login_id, username, password FROM login";
	$result = $conn->query($sql);

if(isset($_SESSION['username'])){
	if ($result->num_rows > 0) {
		echo '
        <div class="container top_space">
        <a href="create_user.php">Create a User</a>
        <table width="100%" border="1px">
		<tr>
		<td>login_id
		</td>
		<td>username
		</td>
		<td>password
		</td>
		<td>
        Edit/Delete
		</td>
		</tr>';

    while($row = $result->fetch_assoc()) {
    	echo '
    	<tr>
    	<td>
    	'. $row["login_id"].'
    	</td>
    	<td>
    	'. $row["username"].'
    	</td>
    	<td>
    	******
    	</td>
    	<td>
    	<a href="edit_admin.php?id='. $row["login_id"] .'">
        <img src="assets/images/edit.png" alt="Edit" height="30" width="30" />
        </a>
    	<a href="delete_admin.php?id='. $row["login_id"] .'">
        <img src="assets/images/delete.png" alt="Delete" height="30" width="30" />
        </a>
    	</td>
    	</tr>
    	';
    	}

    	echo '</table>
    	<b id="welcome">';
        if(isset($_GET['create_success']) && $_GET['create_success'] == 'TRUE'){
            echo 'Create Success!';
        }
        if(isset($_GET['edit_success']) && $_GET['edit_success'] == 'TRUE'){
            echo 'Update Success!';
        }
        if(isset($_GET['delete_success']) && $_GET['delete_success'] == 'TRUE'){
            echo 'Delete Success!';
        }
        if(isset($_GET['user_error']) && $_GET['user_error'] == 'TRUE'){
            echo 'Error with entry.';
        }
        echo ' 
		<br>
		Welcome: <i><?php echo $_SESSION["username"]; ?></i></b>
		<b id="logout"><a href="logout.php">Log Out</a></b>
		<br>
        </div>';
}

    else{
    	echo "0 results";
    }

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