<?php
// Enable error reporting for debugging (remove this in production)
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

require_once('db_configuration.php');

// Establishing Connection with Server
$servername = DATABASE_HOST;
$db_username = DATABASE_USER;
$db_password = DATABASE_PASSWORD;
$database = DATABASE_DATABASE;

// Create connection
$conn = new mysqli($servername, $db_username, $db_password, $database);

// Check connection
if ($conn->connect_error) {
    die('Connect Error (' . $conn->connect_errno . ') ' . $conn->connect_error);
}

if (isset($_GET['id'])) {
    $id_to_delete = $_GET['id'];

    // Prepare the SQL statement to avoid SQL injection
    $stmt = $conn->prepare('DELETE FROM dances WHERE dance_id = ?');

    // Check if the prepare statement was successful
    if ($stmt === false) {
        die("Prepare failed: " . $conn->error);
    }

    // Bind parameters
    $stmt->bind_param('i', $id_to_delete);

    // Execute the prepared statement
    if ($stmt->execute()) {
        // Close the statement and connection
        $stmt->close();
        $conn->close();
        
        // Redirect to the manage_dances page
        header('Location: manage_dances.php');
        exit;
    } else {
        // Print an error if the query failed
        echo "Error: " . $stmt->error;
        // Close the statement and connection
        $stmt->close();
        $conn->close();
    }
} else {
    echo "No dance ID specified for deletion.";
    $conn->close();
}
?>
