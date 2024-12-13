<?php
function getRealEstateHTML() {
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

        <!-- Type -->
        <div class="filter-group">
            <h4>Type</h4>
            <div class="radio-group">
                <label class="radio-label">
                    <input type="radio" name="type" checked>
                    <span>house</span>
                </label>
                <label class="radio-label">
                    <input type="radio" name="type">
                    <span>apartment</span>
                </label>
                <label class="radio-label">
                    <input type="radio" name="type">
                    <span>mansion</span>
                </label>
                <label class="radio-label">
                    <input type="radio" name="type">
                    <span>penthouse</span>
                </label>
            </div>
        </div>

        <!-- Number -->
        <div class="filter-group">
            <h4>Number</h4>
            <div class="input-group">
                <input type="text" placeholder="Number">
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