// Clothing-specific functionality 
const Clothing = {
    init() {
        this.bindEvents();
        this.updateCopyText();
    },

    bindEvents() {
        document.querySelectorAll('input[name="purpose"], input[name="category"]')
            .forEach(input => input.addEventListener('change', () => this.updateCopyText()));

        document.querySelector('input[placeholder="Search for clothing..."]')
            .addEventListener('input', () => this.updateCopyText());

        document.querySelector('input[placeholder="Price"]')
            .addEventListener('input', () => this.updateCopyText());
        document.querySelector('input[name="million"]')
            .addEventListener('change', () => this.updateCopyText());

        document.querySelectorAll('.clear-input').forEach(button => {
            button.addEventListener('click', (e) => {
                const input = e.target.previousElementSibling;
                input.value = '';
                this.updateCopyText();
            });
        });
    },

    updateCopyText() {
        const purpose = document.querySelector('input[name="purpose"]:checked').nextElementSibling.textContent;
        const category = document.querySelector('input[name="category"]:checked').nextElementSibling.textContent;
        const name = document.querySelector('input[placeholder="Search for clothing..."]').value;
        const price = document.querySelector('input[placeholder="Price"]').value;
        const isMillion = document.querySelector('input[name="million"]').checked;

        let text = `${purpose} ${category}`;
        
        if (name) {
            text += `: ${name}`;
        }

        if (price) {
            text += `. Price: $${price}${isMillion ? ' Million' : ''}`;
        } else {
            text += `. Price: Negotiable`;
        }

        document.getElementById('copyText').value = text;
    }
}; 