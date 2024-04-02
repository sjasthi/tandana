<?php
require_once('db_configuration.php');
include 'navigation.php';

// Initialize variables for better handling and user feedback
$updateSuccess = false;
$errors = [];
$danceId = $_GET['id'] ?? null;
$danceData = [];

// Create database connection
$conn = new mysqli(DATABASE_HOST, DATABASE_USER, DATABASE_PASSWORD, DATABASE_DATABASE);
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    // Capture and sanitize POST data. Assume basic validation for simplicity
    $danceId = $_POST['dance_id'];
    $danceEnglishName = $_POST['dance_english_name'];
    $danceAlternateName = $_POST['dance_alternate_name'];
    $danceTeluguName = $_POST['dance_telugu_name'];
    $danceCategory =  $_POST['dance_category'];
    $danceOrigin = $_POST['dance_origin'];
    $danceDescription = $_POST['dance_description'];
    $danceImageReference = $_POST['dance_image_reference'];
    $danceVideoReference = $_POST['dance_video_reference'];
    $danceKeyWords = $_POST["dance_key_words"];
    $danceStatus = $_POST['dance_status'];
    $artistImages = $_POST['artist_images'];

    // Prepare the update statement to prevent SQL injection
    $stmt = $conn->prepare("UPDATE dances SET dance_english_name=?, dance_alternate_name=?, dance_telugu_name=?, dance_category=?, dance_origin=?, dance_description=?, dance_image_reference=?, dance_video_reference=?, dance_key_words=?, dance_status=?, artist_images=? WHERE dance_id=?");
    $stmt->bind_param("sssssssssssi", $danceEnglishName, $danceAlternateName, $danceTeluguName, $danceCategory, $danceOrigin, $danceDescription, $danceImageReference, $danceVideoReference, $danceKeyWords, $danceStatus, $artistImages, $danceId);
    
    if ($stmt->execute()) {
        $updateSuccess = true; // Flag to indicate successful update
        header("Location: manage_dances.php?success=1"); // Redirect with success flag
        exit;
    } else {
        $errors[] = "Error updating record: " . $conn->error;
    }

    $stmt->close();
} elseif ($danceId) {
    // Fetch the existing dance data for prefilling the form
    $stmt = $conn->prepare("SELECT * FROM dances WHERE dance_id = ?");
    $stmt->bind_param("i", $danceId);
    $stmt->execute();
    $result = $stmt->get_result();
    
    if ($result->num_rows === 1) {
        $danceData = $result->fetch_assoc();
    } else {
        $errors[] = "Dance not found.";
    }
    $stmt->close();
}

$conn->close();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Update Dance</title>
</head>
<body>

<nav>
    <!-- Your navigation here -->
</nav>

<?php if ($updateSuccess): ?>
    <p class="success-message">Dance updated successfully!</p>
<?php endif; ?>

<?php if (!empty($errors)): ?>
    <ul class="error-messages">
        <?php foreach ($errors as $error): ?>
            <li><?php echo $error; ?></li>
        <?php endforeach; ?>
    </ul>
<?php endif; ?>

<div id="updateDanceForm">
    <h2>Edit Dance Details</h2>
    <form action="update_dances.php?id=<?php echo htmlspecialchars($danceId); ?>" method="post">
        <input type="hidden" name="dance_id" value="<?php echo htmlspecialchars($danceId); ?>">
        
        <!-- The fields for updating dance information -->
        <label for="danceEnglishName">English Name:</label>
        <input type="text" name="dance_english_name" id="danceEnglishName" value="<?php echo htmlspecialchars($danceData['dance_english_name'] ?? ''); ?>" required>
        
        <label for="danceAlternateName">Alternate Name:</label>
        <input type="text" name="dance_alternate_name" id="danceAlternateName" value="<?php echo htmlspecialchars($danceData['dance_alternate_name'] ?? ''); ?>">
        
        <label for="danceTeluguName">Telugu Name:</label>
        <input type="text" name="dance_telugu_name" id="danceTeluguName" value="<?php echo htmlspecialchars($danceData['dance_telugu_name'] ?? ''); ?>">

        <label for="danceCategory">Category:</label>
        <input type="text" name="dance_category" id="danceCategory" value="<?php echo htmlspecialchars($danceData['dance_category'] ?? ''); ?>">

        <label for="danceOrigin">Origin:</label>
        <input type="text" name="dance_origin" id="danceOrigin" value="<?php echo htmlspecialchars($danceData['dance_origin'] ?? ''); ?>">

        <label for="danceDescription">Description:</label>
        <textarea name="dance_description" id="danceDescription"><?php echo htmlspecialchars($danceData['dance_description'] ?? ''); ?></textarea>

        <label for="danceImageReference">Image Reference:</label>
        <input type="text" name="dance_image_reference" id="danceImageReference" value="<?php echo htmlspecialchars($danceData['dance_image_reference'] ?? ''); ?>">

        <label for="danceVideoReference">Video Reference:</label>
        <input type="text" name="dance_video_reference" id="danceVideoReference" value="<?php echo htmlspecialchars($danceData['dance_video_reference'] ?? ''); ?>">

        <label for="danceKeyWords">Key Words:</label>
        <input type="text" name="dance_key_words" id="danceKeyWords" value="<?php echo htmlspecialchars($danceData['dance_key_words'] ?? ''); ?>">

        <label for="danceStatus">Status:</label>
        <select name="dance_status" id="danceStatus">
            <option value="Active" <?php echo (isset($danceData['dance_status']) && $danceData['dance_status'] === 'Active') ? 'selected' : ''; ?>>Active</option>
            <option value="Inactive" <?php echo (isset($danceData['dance_status']) && $danceData['dance_status'] === 'Inactive') ? 'selected' : ''; ?>>Inactive</option>
        </select>

        <label for="artistImages">Artist Images:</label>
        <input type="text" name="artist_images" id="artistImages" value="<?php echo htmlspecialchars($danceData['artist_images'] ?? ''); ?>">

        <input type="submit" value="Update Dance" class="submit-button">
    </form>
</div>

<style>
/* Add some basic styling */
body {
    font-family: Arial, sans-serif;
}
label {
    display: block;
    margin-top: 10px;
}
input[type="text"],
textarea,
select {
    width: 100%;
    padding: 8px;
    margin-top: 5px;
    margin-bottom: 20px;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}
.submit-button {
    width: 100%;
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}
.submit-button:hover {
    background-color: #45a049;
}
.error-messages li, .success-message {
    color: red;
    font-weight: bold;
}
.success-message {
    color: green;
}
</style>

</body>
</html>