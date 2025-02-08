<?php
include 'db.php';  // Include the database connection
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product Search with Filtering</title>
    <link rel="stylesheet" href="style.css">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

    <div class="sidebar">
        <h3>Filters</h3>
        <div class="filter-group">
            <div class="checkbox-container">
                <label><input type="radio" name="category" value="all" checked> All</label>
                <label><input type="radio" name="category" value="men"> Men</label>
                <label><input type="radio" name="category" value="women"> Women</label>
                <label><input type="radio" name="category" value="kids"> Kids</label>
            </div>
        </div>

        <div class="filter-group">
            <label for="price-range">Price Range</label>
            <input type="range" id="price-range" min="0" max="10000" step="100">
            <span id="price-value">₹0 - ₹10,000</span>
        </div>

        <div class="filter-group">
            <label for="size">Size</label>
            <select id="size" class="form-control">
                <option value="All">All Sizes</option>
                <option value="S">S</option>
                <option value="M">M</option>
                <option value="L">L</option>
                <option value="XL">XL</option>
            </select>
        </div>
    </div>

    <div class="top-box">
        <div class="search-container">
            <i class="fa-solid fa-magnifying-glass"></i>
            <input type="text" id="search-input" placeholder="Try searching Shirts...">
        </div>
    </div>

    <div id="results" class="product-container">
        <?php
        // Fetch products from the database
        $query = "SELECT * FROM products";
        $result = $conn->query($query);

        if ($result->num_rows > 0) {
            while ($row = $result->fetch_assoc()) {
                echo '<div class="product-item">';
                echo '<img src="' . $row['image_url'] . '" class="product-image">';
                echo '<div class="product-details">';
                echo '<h5>' . $row['name'] . '</h5>';
                echo '<p>Price: ₹' . $row['price'] . '</p>';
                echo '<p>Category: ' . $row['category'] . '</p>';
                echo '<p>Size: ' . $row['size'] . '</p>';
                echo '</div>';
                echo '</div>';
            }
        } else {
            echo '<p>No products found</p>';
        }
        ?>
    </div>

    <div id="loading-spinner-container" style="display: none;">
        <div id="loading-spinner" class="spinner-border" role="status">
            <span class="sr-only">Loading...</span>
        </div>
    </div>

    <script src="script.js"></script>
</body>
</html>

<?php
// Close the database connection
$conn->close();
?>
