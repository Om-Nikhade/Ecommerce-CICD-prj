<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sample E-commerce Page</title>
</head>
<body>
    <h1>Welcome to the E-commerce Store</h1>
    <div id="product-list">
        <!-- Product list will be dynamically populated -->
    </div>

    <script>
        // Fetch products from the backend and display them
        fetch('/products')
            .then(response => response.json())
            .then(products => {
                const productList = document.getElementById('product-list');
                products.forEach(product => {
                    const productDiv = document.createElement('div');
                    productDiv.innerHTML = `
                        <h2>${product.name}</h2>
                        <p>${product.description}</p>
                        <p>Price: $${product.price}</p>
                    `;
                    productList.appendChild(productDiv);
                });
            });
    </script>
</body>
</html
