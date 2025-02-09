$(document).ready(function () {
    function fetchProducts() {
        $("#loading-spinner").show();
        $("#product-list").html("");

        let searchQuery = $("#search").val().trim();
        let category = $("input[name='category']:checked").val();
        let price = $("#priceRange").val();
        let size = $("#size").val();
        let patterns = $(".pattern:checked").map(function () { return this.value; }).get();

        $.ajax({
            url: "fetch_products.php",
            method: "POST",
            data: { search: searchQuery, category, price, size, patterns },
            dataType: "json",
            success: function (products) {
                setTimeout(() => {
                    $("#loading-spinner").hide();
                    let productList = $("#product-list");
                    productList.html("");

                    if (products.length === 0) {
                        productList.html("<h4>No products found.</h4>");
                        return;
                    }

                    products.forEach(product => {
                        productList.append(`
                            <div class="product-card">
                                <img src="${product.image_url}" alt="${product.name}">
                                <h5>${product.name}</h5>
                                <p>₹${product.price} | Size: ${product.size} | ${product.pattern}</p>
                                <button class="add-to-cart" data-id="${product.id}">Add to Cart</button>
                            </div>
                        `);
                    });
                }, 1500);
            },
            error: function (xhr, status, error) {
                console.error("Error fetching products:", error);
                $("#product-list").html("<h4>Error loading products.</h4>");
            }
        });
    }

    $("#priceRange").on("input", function () {
        $("#priceValue").text("₹" + $(this).val());
        fetchProducts();
    });

    $("#search, input[name='category'], #size, .pattern").on("input change", fetchProducts);
    fetchProducts();
});
