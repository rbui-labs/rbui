import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="select"
export default class extends Controller {
    static targets = ["item"] // Set the aria-selected attribute on the item that matches the value
    static outlets = ["input", "text"]

    connect() {
        this.setSelectedItem()
    }

    setSelectedItem() {
        const selectedItem = this.selectedItem()
        // remove data-selected from all items
        this.itemTargets.forEach((item) => {
            item.removeAttribute("data-selected")
        })
        // add data-selected to selected item
        if (selectedItem) {
            selectedItem.setAttribute("data-selected", "true")
            selectedItem.setAttribute("aria-selected", "true")
        }
    }
    

    selectedItem() {
        return this.itemTargets.find((item) => {
            return item.dataset.value === this.inputOutlets[0].element.value
        })
    }

    selectItem(event) {
        event.preventDefault()
        const selectedValue = event.currentTarget.dataset.value
        const selectedText = event.currentTarget.innerText
        this.setValue(selectedValue)
        this.setInnerText(selectedText)
    }

    setValue(value) {
        this.inputOutlets.forEach((input) => {
        input.setValue(value)
        })
    }

    setInnerText(text) {
        this.textOutlets.forEach((outlet) => {
            outlet.setText(text)
        })
    }
}