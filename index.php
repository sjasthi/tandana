<!<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Your Website Title</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <link rel="stylesheet" href="chatbotstyle.css">
    <style>
        
        .chat-box-container {
            position: fixed;
            bottom: 20px;
            right: 20px;
            z-index: 9999;
            background-color: #f1f1f1;
            border: 1px solid #ccc;
            border-radius: 10px;
            padding: 20px;
            max-width: 300px;
        }

.chat-popup {
        
         width: 387px;
         height: 700px;
         overflow: hidden;
         background-color: #17202A;
         border-radius: 10px;
         padding: 10px;
         overflow-y: auto;
     }


.form-container {
    background-color: #17202A;
    border-radius: 20px;
    padding: 20px;
    box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
}


#message-input {
    width: calc(100% - -10px);
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 10px;
    margin-bottom: 10px;
    resize: none;
    outline: none;
    transition: border-color 0.3s;
}

        .user-message {
            background-color: #C0392B;
            color: #FDFEFE;
            padding: 10px;
            margin-bottom: 10px;
            border-radius: 5px;
        }

 
        .bot-message {
            background-color: #34495E;
            color: #FDFEFE;
            padding: 10px;
            margin-bottom: 10px;
            border-radius: 5px;
        }

#message-input:focus {
    border-color: #5e9bff;
}


#send-button {
    background-color: #34495E;
    color: #ffffff;
    padding: 12px 20px;
    border: none;
    border-radius: 20px;
    cursor: pointer;
    outline: none;
    transition: background-color 0.3s;
}


#send-button:hover {
    background-color: #C0392B;

            
        }
.close-button {
    position: absolute;
    top: 10px;
    right: 10px;
    background-color: transparent;
    border: none;
    font-size: 16px;
    cursor: pointer;
}

.close-button:hover {
    color:#ECF0F1;
}
body {
    margin: 0;
    padding: 0;
}
.container {
			padding-top: 0 !important; 
			position: relative; 
			top: 0 !important; 
		}
    </style>
</head>
<body>

<!-- Chatbox interface -->
<div class="">
    <!-- Chatbox content will go here -->
<div class="chat-popup">
    <button class="close-button" onclick="closeChat()">X</button><br><br>
    <!-- Chat messages container -->
    <div id="chat-messages"></div>
    <!-- Form container for sending messages -->
    <div class="form-container">
        <textarea id="message-input" placeholder="Type your message..."></textarea>
        <button class="btn" id="send-button">Send</button>
    </div>
</div>

<!-- Button to open/close the chatbox -->
<button class="open-button">Open Chat</button>

<!-- Homepage content -->
<div class="homepage-content">
    <!-- Original PHP code for your website -->
    <?php
    include 'navigation.php';


    if (!isset($_SESSION)) {
        session_start();
    }

    
    // ini_set('session.cache_limiter', 'public');
    // session_cache_limiter(false);

    require_once('db_configuration.php');
    $dance_id = "";
    $dance_english_name = "";
    $dance_alternate_name = "";
    $dance_telugu_name = "";
    $dance_category = "";
    $dance_origin = "";
    $dance_description = "";
    $dance_image_reference = "";
    $dance_video_reference = "";
    $dance_key_words = "";

    
    $image_reference_array = [];
    $video_reference_array = [];

    $count = 0;
    $count_temp = 0;
    $row_count = 0;

    
    $servername = DATABASE_HOST;
    $db_username = DATABASE_USER;
    $db_password = DATABASE_PASSWORD;
    $database = DATABASE_DATABASE;

    if (null !== homepage_show_total) {
        $homepage_show_total = homepage_show_total;
    } else {
        $homepage_show_total = '10';
    }

    if (null !== homepage_show_per_row) {
        $homepage_show_per_row = homepage_show_per_row;
    } else {
        $homepage_show_per_row = '5';
    }

    if (null !== default_language) {
        $default_language = default_language;
    } else {
        $default_language = 'english';
    }

    
    $openai_api_key = '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';

   
    $conn = new mysqli($servername, $db_username, $db_password, $database);


    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }
   
    $conn->set_charset("utf8");

    $sql = "SELECT dance_id, dance_english_name, dance_alternate_name, dance_telugu_name, dance_category, dance_origin, dance_description, dance_image_reference, dance_video_reference, dance_key_words, dance_status FROM dances ORDER BY RAND()";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        foreach ($_GET as $key => $value) {
            echo ('<script>alert($key,$value);</script>');
        }

        echo '
        <div class="container top_space">
        ';

        while ($row = $result->fetch_assoc()) {
          
            $dance_id = $row["dance_id"];

            $image_reference_array = explode(',', $row["dance_image_reference"]);

            if ($image_reference_array[0] != "" && $count != $homepage_show_total) {
                if ($row_count == 0) {
                    echo '
                    <div class="row">
                    <div class="test_row_1">
                    ';
                }

                if ($row_count < $homepage_show_per_row) {
                    echo '
                    <div class="thumbnail_wrapper">
                    <div class="thumbnail">
                    <a href="dances.php?id=' . $row["dance_id"] . '">
                    <div class="thumbnail_image_wrapper" style="background:url(' . $image_reference_array[0] . ') no-repeat;">
                    </div>
                    <div class="caption">
                    ';

                    if ($default_language == 'telugu') {
                        echo '<p style="text-align: center">' . $row["dance_telugu_name"] . '</p>';
                    } else {
                        echo '<p style="text-align: center">' . $row["dance_english_name"] . '</p>';
                    }

                    echo '
                    </div>
                    </a>
                    </div>
                    </div>
                    ';

                    $row_count++;
                }

                if ($row_count == $homepage_show_per_row) {
                    echo '
                    </div>
                    </div>
                    ';
                }

                if ($row_count >= $homepage_show_per_row) {
                    $row_count = 0;
                }

                $count++;
            }
        }

        echo '
        </div>
        ';
    } else {
        echo "0 results";
    }

    $conn->close();

    ?>
</div>

<footer>
    <?php include 'footer.php'; ?>
</footer>

<script>
    $(document).ready(function () {
        $(".open-button").click(function () {
            $(".chat-popup").toggle();
            $(".open-button").toggleClass("active");
        });

      
        $("#send-button").click(function () {
            var message = $("#message-input").val().trim();
            if (message !== "") {
              
                $("#chat-messages").append('<div class="user-message">' + message + '</div>');

                
                $.ajax({
                    url: "process_message.php",
                    type: "POST",
                    data: { message: message },
                    success: function (response) {
                       
                        $("#chat-messages").append('<div class="bot-message">' + response + '</div>');
                      
                        $("#chat-messages").scrollTop($("#chat-messages")[0].scrollHeight);
                    }
                });
            }
           
            $("#message-input").val("");
        });

        
        $("a").hover(function () {
            $(this).css("background-color", "green");
        }, function () {
            $(this).css("background-color", "#3953ad");
        });
    });
function closeChat() {
       $(".chat-popup").hide();
   }
</script>
</body>
</html>
