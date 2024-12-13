const Auto = {
    init() {
        this.bindEvents();
        this.updateCopyText();
    },

    bindEvents() {
        document.querySelector('input[placeholder="Search for auto..."]')
            .addEventListener('input', () => this.updateCopyText());

        document.querySelectorAll('.clear-input').forEach(button => {
            button.addEventListener('click', (e) => {
                const input = e.target.previousElementSibling;
                input.value = '';
                this.updateCopyText();
            });
        });
    },

    updateCopyText() {
        const search = document.querySelector('input[placeholder="Search for auto..."]').value;
        let text = `Searching for: ${search}`;
        document.getElementById('copyText').value = text;
    }
}; 