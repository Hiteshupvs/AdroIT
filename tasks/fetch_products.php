<?php
require "db.php";

header('Content-Type: application/json'); 

$search = $_POST['search'] ?? '';
$category = $_POST['category'] ?? 'All';
$price = $_POST['price'] ?? 5000;
$size = $_POST['size'] ?? 'All';
$patterns = $_POST['patterns'] ?? [];

$query = "SELECT * FROM products WHERE price <= :price";
$params = ['price' => $price];

if (!empty($search)) {
    $search = strtolower($search);
    $query .= " AND LOWER(name) LIKE :search";
    $params['search'] = "%$search%";
}

if ($category !== "All" && !empty($category)) {
    $query .= " AND category = :category";
    $params['category'] = $category;
}

if ($size !== "All") {
    $query .= " AND size = :size";
    $params['size'] = $size;
}

if (!empty($patterns)) {
    $patternPlaceholders = implode(',', array_map(fn($k) => ":pattern$k", array_keys($patterns)));
    $query .= " AND pattern IN ($patternPlaceholders)";
    
    foreach ($patterns as $key => $value) {
        $params["pattern$key"] = $value;
    }
}

$stmt = $pdo->prepare($query);
$stmt->execute($params);
$products = $stmt->fetchAll(PDO::FETCH_ASSOC);

echo json_encode($products, JSON_PRETTY_PRINT);
?>
