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
            success: function (response) {
                setTimeout(() => {
                    $("#loading-spinner").hide();
                    $("#product-list").html(response);
                }, 1500);
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
