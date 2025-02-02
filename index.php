<?php
require_once 'categories/real_estate.php';
require_once 'categories/auto.php';
require_once 'categories/clothing.php';
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lifeinvader Ads</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <h1 class="site-title">Lifeinvader Ads</h1>
    
    <div class="container">
        <!-- Menu Bar -->
        <div class="menu-bar">
            <label class="menu-item">
                <input type="radio" name="menu" checked>
                <span class="menu-text">
                    <i class="icon">🏠</i> Real Estate
                </span>
            </label>
            <label class="menu-item">
                <input type="radio" name="menu">
                <span class="menu-text">
                    <i class="icon">🚗</i> Auto
                </span>
            </label>
            <label class="menu-item">
                <input type="radio" name="menu">
                <span class="menu-text">
                    <i class="icon">👕</i> Clothing
                </span>
            </label>
            <!-- Add other categories here -->
        </div>

        <!-- Category content will be loaded here -->
        <div id="categoryContent"></div>

        <!-- Copy Text Area -->
        <div class="copy-text-area">
            <input type="text" id="copyText" readonly>
            <button class="copy-btn">COPY TEXT</button>
            <button class="refresh-btn">REFRESH</button>
        </div>
    </div>

    <script src="js/real_estate.js"></script>
    <script src="js/auto.js"></script>
    <script src="js/clothing.js"></script>
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            // Handle category switching
            document.querySelectorAll('.menu-item input').forEach(input => {
                input.addEventListener('change', (e) => {
                    // Remove active class from all menu items
                    document.querySelectorAll('.menu-item').forEach(item => {
                        item.classList.remove('active');
                    });
                    
                    // Add active class to selected menu item
                    e.target.parentElement.classList.add('active');
                    
                    const category = e.target.parentElement.textContent.trim();
                    loadCategory(category);
                });
            });

            function loadCategory(category) {
                const content = document.getElementById('categoryContent');
                
                // Clear previous content
                content.innerHTML = '';
                
                // Load new content based on category
                switch(category) {
                    case 'Real Estate':
                        content.innerHTML = <?php echo json_encode(getRealEstateHTML()); ?>;
                        RealEstate.init();
                        break;
                    case 'Auto':
                        content.innerHTML = <?php echo json_encode(getAutoHTML()); ?>;
                        Auto.init();
                        break;
                    case 'Clothing':
                        content.innerHTML = <?php echo json_encode(getClothingHTML()); ?>;
                        Clothing.init();
                        break;
                    // Add other categories...
                }
            }

            // Initialize with Real Estate
            document.querySelector('.menu-item').classList.add('active');
            loadCategory('Real Estate');

            // Refresh button functionality
            document.querySelector('.refresh-btn').addEventListener('click', () => {
                const activeCategory = document.querySelector('.menu-item.active').textContent.trim();
                loadCategory(activeCategory);
            });
        });
    </script>
</body>
</html> 