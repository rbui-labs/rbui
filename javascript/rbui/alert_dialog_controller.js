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
}
