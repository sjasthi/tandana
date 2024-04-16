<?php include 'navigation.php';

if(!isset($_SESSION)) 
    { 
        session_start(); 
    } 

    if(isset($_SESSION['username'])){
    	echo "Already logged in.";
    }
    
    else{
    	echo '
    	<div class="container top_space">
    	<h1>Admin Login Session</h1>
		<form action="login.php" method="post">
		<table width="500" align="center" bgcolor="skyblue">
		<tr align="center">
		<td colspan="3"><h2>User Login</h2></td>
		</tr>
		<tr>
		<td align="right"><b>Username</b></td>
		<td><input type="text" name="username" required="required" placeholder="Username"></td>
		</tr>
		<tr>
		<td align="right"><b>Password:</b></td>
		<td><input type="password" name="password" required="required" placeholder="Password"></td>
		</tr>
		<tr align="center">
		<td colspan="3">
		<input type="submit" name="login" value="Login"/>
		</td>
		</tr>
		</table>
		</form>
    	';

    	if(isset($_SESSION['invalid_entry'])){
    		echo "Invalid entry. Try again!";
    	}
    }
 ?>
<style type="text/css">
	.container {
    padding-top: 0 !important; 
    position: relative; 
    top: 0 !important; 
}
</style>
<footer>
<?php include 'footer.php'; ?>
</footer>
</body>
</html>