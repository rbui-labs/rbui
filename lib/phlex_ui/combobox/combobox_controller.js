import { Controller } from "@hotwired/stimulus";
import { computePosition } from "@floating-ui/dom";
import { ITEM_SELECTED } from "./combobox_item_controller";
import { ITEM_KEY_ESC } from "./combobox_content_controller";

export const POPOVER_OPENED = "phlexui--combobox#popoverOpened";

export default class extends Controller {
  static targets = ["input", "popover", "content", "search"];
  static values = { closed: Boolean }

  connect() {
    computePosition(this.inputTarget, this.popoverTarget).then(({ x, y }) => {
      Object.assign(this.popoverTarget.style, {
        left: `${x}px`,
        top: `${y}px`,
      });
    });

    document.addEventListener(ITEM_SELECTED, (e) => this.itemSelected(e.detail), false);
    document.addEventListener(ITEM_KEY_ESC, () => this.toogleContent(), false);
  }

  disconnect() {
    document.removeEventListener(ITEM_SELECTED, (e) => this.itemSelected(e.detail), false);
    document.removeEventListener(ITEM_KEY_ESC, () => this.toogleContent(), false);
  }

  onClick() {
    this.toogleContent();
  }

  clickOutside(event) {
    if (this.closedValue) return;
    if (this.element.contains(event.target)) return;

    event.preventDefault();
    this.toogleContent();
  }

  itemSelected({ value, label }) {
    this.inputTarget.value = value;
    this.contentTarget.innerText = label;
    this.toogleContent();
  }

  toogleContent() {
    this.closedValue = !this.closedValue;

    this.popoverTarget.classList.toggle("invisible");
    this.inputTarget.setAttribute("aria-expanded", !this.closedValue);

    if (!this.closedValue) {
      const event = new CustomEvent(POPOVER_OPENED, { detail: { closed: this.closedValue } });
      document.dispatchEvent(event);
    }
  }
}
