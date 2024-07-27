import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="dialog"
export default class extends Controller {
  static targets = ["content"]
  static values = {
    open: {
      type: Boolean,
      default: false
    }
  }

  // eslint-disable-next-line no-unused-vars
  open(e) {
    document.body.insertAdjacentHTML('beforeend', this.contentTarget.innerHTML)
  }
}
