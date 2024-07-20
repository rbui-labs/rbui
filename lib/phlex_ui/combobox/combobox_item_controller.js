import { Controller } from "@hotwired/stimulus";
import { ITEM_KEY_UP, ITEM_KEY_DOWN, ITEM_KEY_ENTER } from "./combobox_content_controller";

export const ITEM_SELECTED = "phlexui--combobox-item#selected";
const ITEM_MOUSEENTER = "phlexui--combobox-item#mouseenter";

export default class extends Controller {
  static targets = ["check"];

  connect() {
    document.addEventListener(ITEM_SELECTED, (e) => this.uncheck(e.detail), false);
    document.addEventListener(ITEM_MOUSEENTER, (e) => this.unselect(e.detail), false);
    document.addEventListener(ITEM_KEY_UP, (e) => this.handleKeyUp(e.detail), false);
    document.addEventListener(ITEM_KEY_DOWN, (e) => this.handleKeyDown(e.detail), false);
    document.addEventListener(ITEM_KEY_ENTER, (e) => this.handleKeyEnter(e.detail), false);
  }

  disconnect() {
    document.removeEventListener(ITEM_SELECTED, (e) => this.uncheck(e.detail), false);
    document.removeEventListener(ITEM_MOUSEENTER, (e) => this.unselect(e.detail), false);
    document.removeEventListener(ITEM_KEY_UP, (e) => this.handleKeyUp(e.detail), false);
    document.removeEventListener(ITEM_KEY_DOWN, (e) => this.handleKeyDown(e.detail), false);
    document.removeEventListener(ITEM_KEY_ENTER, (e) => this.handleKeyEnter(e.detail), false);
  }

  mouseenter() {
    this.element.setAttribute("aria-selected", true);

    const { value } = this.element.dataset;
    const event = new CustomEvent(ITEM_MOUSEENTER, { detail: { value } });
    document.dispatchEvent(event);
  }

  selectItem() {
    this.checkTarget.classList.toggle("invisible", false);

    const { value } = this.element.dataset;
    const label = this.element.innerText;

    const event = new CustomEvent(ITEM_SELECTED, { detail: { value, label } });
    document.dispatchEvent(event);
  }

  handleKeyUp({ id }) {
    const [base, idx] = id.split("-");

    if (idx === "0") return;

    const prevIdx = parseInt(idx) - 1;

    if (this.element.id === `${base}-${prevIdx}`) {
      this.element.setAttribute("aria-selected", true);
    } else {
      this.element.removeAttribute("aria-selected");
    }
  }

  handleKeyDown({ id, length }) {
    const [base, idx] = id.split("-");
    const nextIdx = parseInt(idx) + 1;

    if (nextIdx === length) return;

    if (this.element.id === `${base}-${nextIdx}`) {
      this.element.setAttribute("aria-selected", true);
    } else {
      this.element.removeAttribute("aria-selected");
    }
  }

  handleKeyEnter({ id }) {
    if (this.element.id !== id) return;

    this.selectItem();
  }

  uncheck({ value }) {
    if (this.element.dataset.value !== value) {
      this.checkTarget.classList.toggle("invisible", true);
    }
  }

  unselect({ value }) {
    if (this.element.dataset.value !== value) {
      this.element.removeAttribute("aria-selected");
    }
  }
}
