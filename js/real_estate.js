const RealEstate = {
    init() {
        this.bindEvents();
        this.updateCopyText();
    },

    bindEvents() {
        document.querySelectorAll('input[name="purpose"], input[name="type"]')
            .forEach(input => input.addEventListener('change', () => this.updateCopyText()));
        
        document.querySelector('input[placeholder="Number"]')
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
        const type = document.querySelector('input[name="type"]:checked').nextElementSibling.textContent;
        const number = document.querySelector('input[placeholder="Number"]').value;
        const price = document.querySelector('input[placeholder="Price"]').value;
        const isMillion = document.querySelector('input[name="million"]').checked;

        let text = `${purpose} `;
        
        if (number) {
            text += `${type} №${number}`;
        } else {
            text += `a ${type}`;
        }

        if (price) {
            text += `. Price: $${price}${isMillion ? ' Million' : ''}`;
        } else {
            text += `. Price: Negotiable`;
        }

        document.getElementById('copyText').value = text;
    }
}; 