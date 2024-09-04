import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="alert-dialog"
export default class extends Controller {
  static targets = ["content"];
  static values = {
    open: {
      type: Boolean,
      default: false,
    },
  };

  connect() {
    if (this.openValue) {
      this.open();
    }
  }

  open() {
    document.body.insertAdjacentHTML("beforeend", this.contentTarget.innerHTML);
  }

  dismiss(e) {
    // allow scroll on body
    document.body.classList.remove('overflow-hidden')
    // remove the element
    this.element.remove()
  }
}
