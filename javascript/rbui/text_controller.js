import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="text"
export default class extends Controller {
  setText(text) {
    this.element.innerText = text
  }
}