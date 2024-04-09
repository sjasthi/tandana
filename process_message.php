<?php

$message = $_POST['message'];

error_reporting(E_ALL);
ini_set('display_errors', 1);

require __DIR__ . '/vendor/autoload.php';

use Orhanerday\OpenAi\OpenAi;

$apiKey = "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";

$userInput = "Replace this with your prompt";

try {
    $openAi = new OpenAi($apiKey);

    $complete = $openAi->completion([
        'model' => 'gpt-3.5-turbo-instruct',
        'prompt' => $message, // Corrected the prompt
        'temperature' => 0.9,
        'max_tokens' => 150,
        'frequency_penalty' => 0,
        'presence_penalty' => 0.6,
    ]);

    if (!empty($complete)) {
        $phpObj = json_decode($complete);
        if(isset($phpObj->choices[0]->text)) {
            $response = $phpObj->choices[0]->text;
            echo $response;
        } else {
            echo "No response text found in API response.";
           
            echo "<pre>";
            print_r($phpObj);
            echo "</pre>";
        }
    } else {
        echo "No response received from the API.";
    }
} catch (Exception $e) {
    echo "Error: " . $e->getMessage();
}
?>
