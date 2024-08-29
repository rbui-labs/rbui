import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="dialog"
export default class extends Controller {
  static targets = ["content"]

  open() {
    document.body.insertAdjacentHTML("beforeend", this.contentTarget.innerHTML)
  }
}
