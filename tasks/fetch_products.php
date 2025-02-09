<?php
require "db.php";

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

if ($products) {
    foreach ($products as $product) {
        echo "
            <div class='col-md-4 mb-4'>
                <div class='card'>
                    <img src='{$product['image_url']}' class='card-img-top' alt='{$product['name']}'>
                    <div class='card-body'>
                        <h5 class='card-title'>{$product['name']}</h5>
                        <p class='card-text'>₹{$product['price']} | Size: {$product['size']} | {$product['pattern']}</p>
                    </div>
                </div>
            </div>
        ";
    }
} else {
    echo "<div class='text-center'><h4>No match found.</h4></div>";
}
?>
