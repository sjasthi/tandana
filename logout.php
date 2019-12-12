<?php include 'navigation.php';
echo '<div class="container top_space">';
if(!isset($_SESSION)) 
    { 
        session_start(); 
    } 
session_destroy();
echo "Successfully logged out.";
echo '</div>';
?>
<br>
<a href="index.php">Return to Home.</a>
<footer>
<?php include 'footer.php'; ?>
</footer>
</body>
</html>