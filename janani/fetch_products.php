<?php
include 'db.php'; // Include the database connection file

// Set error reporting for debugging (comment this out in production)
error_reporting(E_ALL);
ini_set('display_errors', 1);

// Send header to inform that the response will be JSON
header('Content-Type: application/json');

// Initialize filter variables
$category = isset($_GET['category']) ? $_GET['category'] : 'all';
$price = isset($_GET['price']) ? $_GET['price'] : 10000;  // Maximum price
$size = isset($_GET['size']) ? $_GET['size'] : '';  // Default to empty, will fetch all sizes
$search = isset($_GET['search']) ? $_GET['search'] : '';  // Search query

// Initialize $params with the price
$params = [$price];  // Initialize with price

// Base query
$query = "SELECT * FROM products WHERE price <= ?";

// Apply category filter
if ($category != 'all') {
    $query .= " AND category = ?";
    $params[] = $category;
}

// Apply size filter only if a specific size is selected and it's not 'all'
if (!empty($size) && $size != 'all') {  // Check if size is not empty and not 'all'
    $query .= " AND size = ?";
    $params[] = $size;
}

// Apply search query (if provided)
if (!empty($search)) {
    // Modify the query to search for products where the name starts with the provided letter
    $search = $search . '%';  // Add wildcard for partial search at the end
    $query .= " AND LOWER(name) LIKE LOWER(?)";
    $params[] = $search;
}

// Prepare the query
$stmt = $conn->prepare($query);

// Check if statement preparation was successful
if ($stmt === false) {
    echo json_encode(['error' => 'Error preparing the query: ' . $conn->error]);
    exit;
}

// Prepare the bind types based on the number of parameters
$types = str_repeat('s', count($params) - 1);  // 's' for strings; 'd' for price as it's numeric
$types .= 'd';  // Add 'd' for the numeric price filter

// Bind the parameters
if (!$stmt->bind_param($types, ...$params)) {
    echo json_encode(['error' => 'Error binding parameters: ' . $stmt->error]);
    exit;
}

// Execute the query
if (!$stmt->execute()) {
    echo json_encode(['error' => 'Error executing query: ' . $stmt->error]);
    exit;
}

// Get the result
$result = $stmt->get_result();

// Check if any results were returned
if ($result->num_rows == 0) {
    echo json_encode(['error' => 'No products found matching the criteria']);
    exit;
}

// Fetch data
$products = [];
while ($row = $result->fetch_assoc()) {
    $products[] = [
        'name' => $row['name'],
        'price' => $row['price'],
        'category' => $row['category'],
        'size' => $row['size'],
        'pattern' => $row['pattern'] ?? 'No Pattern',  // Ensure a fallback if pattern is null
        'image_url' => $row['image_url'],
        'description' => $row['description'] ?? 'No description available'  // Handle description
    ];
}

// Return the products as JSON
echo json_encode($products);

// Close the statement
$stmt->close();
?>
