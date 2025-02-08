<?php
include 'db.php';

error_reporting(E_ALL);
ini_set('display_errors', 1);

header('Content-Type: application/json');

$category = isset($_GET['category']) ? $_GET['category'] : 'all';
$price = isset($_GET['price']) ? $_GET['price'] : 10000;
$size = isset($_GET['size']) ? $_GET['size'] : '';
$search = isset($_GET['search']) ? $_GET['search'] : '';

$params = [$price];

$query = "SELECT * FROM products WHERE price <= ?";

if ($category != 'all') {
    $query .= " AND category = ?";
    $params[] = $category;
}

if (!empty($size) && $size != 'all') {
    $query .= " AND size = ?";
    $params[] = $size;
}

if (!empty($search)) {
    $search = $search . '%';
    $query .= " AND LOWER(name) LIKE LOWER(?)";
    $params[] = $search;
}

$stmt = $conn->prepare($query);

if ($stmt === false) {
    echo json_encode(['error' => 'Error preparing the query: ' . $conn->error]);
    exit;
}

$types = str_repeat('s', count($params) - 1);
$types .= 'd';

if (!$stmt->bind_param($types, ...$params)) {
    echo json_encode(['error' => 'Error binding parameters: ' . $stmt->error]);
    exit;
}

if (!$stmt->execute()) {
    echo json_encode(['error' => 'Error executing query: ' . $stmt->error]);
    exit;
}

$result = $stmt->get_result();

if ($result->num_rows == 0) {
    echo json_encode(['error' => 'No products found matching the criteria']);
    exit;
}

$products = [];
while ($row = $result->fetch_assoc()) {
    $products[] = [
        'name' => $row['name'],
        'price' => $row['price'],
        'category' => $row['category'],
        'size' => $row['size'],
        'pattern' => $row['pattern'] ?? 'No Pattern',
        'image_url' => $row['image_url'],
        'description' => $row['description'] ?? 'No description available'
    ];
}

echo json_encode($products);

$stmt->close();
?>
