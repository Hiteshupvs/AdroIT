document.addEventListener('DOMContentLoaded', function () {
    const categoryRadios = document.querySelectorAll('input[name="category"]');
    const priceRange = document.getElementById('price-range');
    const priceValue = document.getElementById('price-value');
    const sizeSelect = document.getElementById('size');
    const searchInput = document.getElementById('search-input');
    const resultsContainer = document.getElementById('results');
    const loadingSpinner = document.getElementById('loading-spinner');

    function getSelectedCategory() {
        for (const radio of categoryRadios) {
            if (radio.checked) {
                return radio.value;
            }
        }
        return 'all';
    }

    function getSelectedSize() {
        return sizeSelect.value;
    }

    function fetchFilteredProducts() {
        const category = getSelectedCategory();
        const price = priceRange.value;
        const size = getSelectedSize();
        const searchQuery = searchInput.value.trim();

        loadingSpinner.style.display = 'block';

        const params = new URLSearchParams();
        params.append('category', category);
        params.append('price', price);
        params.append('size', size);
        if (searchQuery) {
            params.append('search', searchQuery);
        }

        console.log('Fetching products with URL:', 'fetch_products.php?' + params.toString());

        fetch('fetch_products.php?' + params.toString())
            .then(response => response.json())
            .then(products => {
                loadingSpinner.style.display = 'none';
                resultsContainer.innerHTML = '';

                if (products.error) {
                    resultsContainer.innerHTML = `<p>${products.error}</p>`;
                } else {
                    products.forEach(product => {
                        const productDiv = document.createElement('div');
                        productDiv.classList.add('product-item');

                        const img = document.createElement('img');
                        img.src = product.image_url;
                        img.classList.add('product-image');

                        const productDetails = document.createElement('div');
                        productDetails.classList.add('product-details');
                        productDetails.innerHTML = `
                            <h5>${product.name}</h5>
                            <p>Price: ₹${product.price}</p>
                            <p>Category: ${product.category}</p>
                            <p>Size: ${product.size}</p>
                        `;

                        const productDescription = document.createElement('div');
                        productDescription.classList.add('product-description');
                        productDescription.innerHTML = `<p>${product.description || 'No description available'}</p>`;

                        productDiv.appendChild(img);
                        productDiv.appendChild(productDetails);
                        productDiv.appendChild(productDescription);

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

    categoryRadios.forEach(radio => radio.addEventListener('change', fetchFilteredProducts));
    priceRange.addEventListener('input', function () {
        priceValue.textContent = `₹${this.value} - ₹10,000`;
        fetchFilteredProducts();
    });
    sizeSelect.addEventListener('change', fetchFilteredProducts);
    searchInput.addEventListener('input', fetchFilteredProducts);

    searchInput.addEventListener('keydown', function (e) {
        if (e.key === 'Enter') {
            fetchFilteredProducts();
        }
    });

    fetchFilteredProducts();
});
