<html>

<head>
  <title>Resources</title>
  <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/2.0.0/css/dataTables.dataTables.min.css">
  <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
  <script src="https://cdn.datatables.net/2.0.0/js/dataTables.min.js"></script>

  <style type="text/css">
      .link {
          position:relative; 
          top:700px;
      }
  </style>
</head>
<body>
  <form method='get'>
    <?PHP include 'navigation.php';
    require_once('db_configuration.php');


    // Establishing Connection with Server
    $servername = DATABASE_HOST;
    $db_username = DATABASE_USER;
    $db_password = DATABASE_PASSWORD;
    $database = DATABASE_DATABASE;

    // Create connection
    
    $conn = new mysqli(DATABASE_HOST, DATABASE_USER, DATABASE_PASSWORD, DATABASE_DATABASE);
    if ($conn->connect_error) {
        die('Connect Error (' . $conn->connect_errno . ') '
                . $conn->connect_error);
    }
    //check if the starting row variable was passed in the URL or not
    if (!isset($_GET['startrow']) or !is_numeric($_GET['startrow'])) {
      //we give the value of the starting row to 0 because nothing was found in URL
      $startrow = 0;
    //otherwise we take the value from the URL
    } else {
      $startrow = (int)$_GET['startrow'];
    }
    /*
    D
    RESOURCE_TYPE
    RESOURCE_NAMES
    RESOURCE_LOCATION
    ISBN
    PUBLICATION_DATE
    AUTHOR_NAME
    PUBLICATION_COMPANY
    AUTHOR2_NAME
    AUTHOR3_NAME
    */
    //this part goes after the checking of the $_GET var
    $fetch = mysqli_query($conn,"SELECT * FROM Resources LIMIT $startrow, 10")or
    die(mysqli_error($conn));
      $num=Mysqli_num_rows($fetch);
            if($num>0)
            {
              echo "<table border=2 class='artist_table' style= \"position:absolute; top:400px;\" >";
              echo "<thead><tr><th>ID</th><th>RESOURCE_TYPE</th><th>RESOURCE_NAMES</th><th>RESOURCE_LOCATION</th><th>ISBN</th>       
              <th>PUBLICATION_DATE</th><th>AUTHOR_NAME</th><th>PUBLICATION_COMPANY</th><th>AUTHOR2_NAME</th><th>AUTHOR3_NAME</th>";
              
              if(isset($_SESSION['username'])){
              '<th>ACTIONS</th>';
              }
              echo "</tr></thead>";
              echo "<tbody";
              if(isset($_SESSION['username'])){
                $edit="update_resources.php";
                $delete="delete_resource.php";
                $link='<a href=$edit>Edit</a>'.'<a href=$delete>Delete</a>';

                $row=mysqli_fetch_row($fetch);
                for($i=0;$i<$num;$i++) //?id=.$row[0].
                {
                $row=mysqli_fetch_row($fetch);
                  if ($row !== null) {
                    echo "<tr>";
                    echo '<td><a href="' . $edit . '?id=' . $row[0] . '">Edit</a> <a href="' . $delete . '?id=' . $row[0] . '">Delete</a></td>';
                    for ($j = 0; $j < count($row); $j++) {
                        echo '<td>' . $row[$j] . '</td>';
                    }
                    echo "</tr>";
                  } else {
                    echo '<tr><td colspan="12"></td></tr>';
                    // Alternatively, you could redirect the user to a different page or perform other actions.
                  }
                }//for
                echo"</table>";
              }
                //only admins can see this
              for($i=0;$i<$num;$i++)
              {
              $row=mysqli_fetch_row($fetch);
              if ($row !== null) {
                echo "<tr>";
                for ($j = 0; $j < count($row); $j++) {
                    echo '<td>' . $row[$j] . '</td>';
                }
                echo "</tr>";
            } else {
                echo '<tr><td colspan="12"></td></tr>';
                // Alternatively, you could redirect the user to a different page or perform other actions.
            }
              }//for
              echo"</table>";
            }
    //now this is the link..
    echo '<a class="link" href="'.$_SERVER['PHP_SELF'].'?startrow='.($startrow+10).'">Next</a>';

    $prev = $startrow - 10;

    //only print a "Previous" link if a "Next" was clicked
    if ($prev >= 0)
        echo '<a class="link" href="'.$_SERVER['PHP_SELF'].'?startrow='.$prev.'">Previous</a>';
    ?>
  </form>
</body>
</html>