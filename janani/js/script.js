document.addEventListener('DOMContentLoaded', function () {
    const categoryRadios = document.querySelectorAll('input[name="category"]');
    const priceRange = document.getElementById('price-range');
    const priceValue = document.getElementById('price-value');
    const sizeSelect = document.getElementById('size');
    const searchInput = document.getElementById('search-input');
    const resultsContainer = document.getElementById('results');
    const loadingSpinner = document.getElementById('loading-spinner');

    // Function to get selected category
    function getSelectedCategory() {
        for (const radio of categoryRadios) {
            if (radio.checked) {
                return radio.value;
            }
        }
        return 'all';  // Default to 'all' if no category is selected
    }

    // Function to get selected size
    function getSelectedSize() {
        return sizeSelect.value;
    }

    // Function to fetch products with filters
    function fetchFilteredProducts() {
        const category = getSelectedCategory();
        const price = priceRange.value;
        const size = getSelectedSize();  // Get selected size
        const searchQuery = searchInput.value.trim();

        // Show loading spinner
        loadingSpinner.style.display = 'block';

        // Construct the URL with filters
        const params = new URLSearchParams();
        params.append('category', category);
        params.append('price', price);
        params.append('size', size);  // Pass selected size to the backend
        if (searchQuery) {
            params.append('search', searchQuery);  // Add search query
        }

        // Log the URL for debugging
        console.log('Fetching products with URL:', 'fetch_products.php?' + params.toString());

        // Fetch filtered products from the server
        fetch('fetch_products.php?' + params.toString())
            .then(response => response.json())
            .then(products => {
                // Hide loading spinner
                loadingSpinner.style.display = 'none';

                // Clear the current results
                resultsContainer.innerHTML = '';

                // If no products found
                if (products.error) {
                    resultsContainer.innerHTML = `<p>${products.error}</p>`;
                } else {
                    // Display the fetched products
                    products.forEach(product => {
                        const productDiv = document.createElement('div');
                        productDiv.classList.add('product-item');

                        // Create product image
                        const img = document.createElement('img');
                        img.src = product.image_url;
                        img.classList.add('product-image');

                        // Create product details
                        const productDetails = document.createElement('div');
                        productDetails.classList.add('product-details');
                        productDetails.innerHTML = `
                            <h5>${product.name}</h5>
                            <p>Price: ₹${product.price}</p>
                            <p>Category: ${product.category}</p>
                            <p>Size: ${product.size}</p>
                        `;

                        // Create product description
                        const productDescription = document.createElement('div');
                        productDescription.classList.add('product-description');
                        productDescription.innerHTML = `<p>${product.description || 'No description available'}</p>`;

                        // Append product content
                        productDiv.appendChild(img);
                        productDiv.appendChild(productDetails);
                        productDiv.appendChild(productDescription);

                        // Append to the results container
                        resultsContainer.appendChild(productDiv);
                    });
                }
            })
            .catch(error => {
                console.error('Error fetching data:', error);
                loadingSpinner.style.display = 'none';
                resultsContainer.innerHTML = '<p>Error fetching products</p>';
            });
    }

    // Event listeners
    categoryRadios.forEach(radio => radio.addEventListener('change', fetchFilteredProducts));
    priceRange.addEventListener('input', function () {
        priceValue.textContent = `₹${this.value} - ₹10,000`;
        fetchFilteredProducts();
    });
    sizeSelect.addEventListener('change', fetchFilteredProducts);  // Trigger fetch when size is changed
    searchInput.addEventListener('input', fetchFilteredProducts);  // Trigger search on typing

    // Trigger search on pressing Enter
    searchInput.addEventListener('keydown', function (e) {
        if (e.key === 'Enter') {
            fetchFilteredProducts();
        }
    });

    // Initial fetch on page load
    fetchFilteredProducts();
});
