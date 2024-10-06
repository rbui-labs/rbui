import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="input"
export default class extends Controller {
  connect() {
    console.log("Connected to input");
  }
  setValue(value) {
    this.element.value = value;
  }
}
