<?php
$json = '{"name": "Shirt", "price": 500, "category": "Men"}';

$data = json_decode($json, true);

if (json_last_error() === JSON_ERROR_NONE) {
    echo "Valid JSON ✅<br>";
    echo "<pre>" . json_encode($data, JSON_PRETTY_PRINT) . "</pre>"; 
} else {
    echo "Invalid JSON ❌: " . json_last_error_msg();
}
?>
