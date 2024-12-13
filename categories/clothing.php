<?php
function getClothingHTML() {
    return <<<HTML
    <div class="filters-grid">
        <!-- Purpose -->
        <div class="filter-group">
            <h4>Purpose</h4>
            <div class="radio-group">
                <label class="radio-label">
                    <input type="radio" name="purpose" checked>
                    <span>Selling</span>
                </label>
                <label class="radio-label">
                    <input type="radio" name="purpose">
                    <span>Buying</span>
                </label>
                <label class="radio-label">
                    <input type="radio" name="purpose">
                    <span>Trading</span>
                </label>
            </div>
        </div>

        <!-- Category -->
        <div class="filter-group">
            <h4>Category</h4>
            <div class="radio-group">
                <label class="radio-label">
                    <input type="radio" name="category" checked>
                    <span>Top/Hoodie</span>
                </label>
                <label class="radio-label">
                    <input type="radio" name="category">
                    <span>Pants</span>
                </label>
                <label class="radio-label">
                    <input type="radio" name="category">
                    <span>Shoes</span>
                </label>
                <label class="radio-label">
                    <input type="radio" name="category">
                    <span>Accessory</span>
                </label>
                <label class="radio-label">
                    <input type="radio" name="category">
                    <span>Headwear/Mask</span>
                </label>
                <label class="radio-label">
                    <input type="radio" name="category">
                    <span>Watch</span>
                </label>
                <label class="radio-label">
                    <input type="radio" name="category">
                    <span>Backpacks</span>
                </label>
                <label class="radio-label">
                    <input type="radio" name="category">
                    <span>Dress</span>
                </label>
            </div>
        </div>

        <!-- Name/Search -->
        <div class="filter-group">
            <h4>Name:</h4>
            <div class="search-group">
                <input type="text" id="searchInput" placeholder="Search for clothing...">
                <button class="clear-input">CLEAR</button>
            </div>
        </div>

        <!-- Price -->
        <div class="filter-group">
            <h4>Price:</h4>
            <div class="input-group">
                <input type="text" placeholder="Price">
                <button class="clear-input">CLEAR</button>
                <label class="checkbox-label">
                    <input type="checkbox" name="million">
                    <span>Million</span>
                </label>
            </div>
        </div>
    </div>
HTML;
}
?> 