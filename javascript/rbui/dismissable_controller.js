import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="dismissable"
export default class extends Controller {
  // eslint-disable-next-line no-unused-vars
  dismiss(e) {
    // allow scroll on body
    document.body.classList.remove('overflow-hidden')
    // remove the element
    this.element.remove()
  }
}
