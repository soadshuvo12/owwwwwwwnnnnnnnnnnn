<?php
function getAutoHTML() {
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
            </div>
        </div>

        <!-- Name/Search -->
        <div class="filter-group">
            <h4>Name:</h4>
            <div class="search-group">
                <input type="text" id="searchInput" placeholder="Search for auto...">
                <button class="clear-input">CLEAR</button>
            </div>
        </div>
    </div>
HTML;
}
?> 