import { Controller } from "@hotwired/stimulus";

import { POPOVER_OPENED } from "./combobox_controller";

export const ITEM_KEY_UP = "phlexui--combobox-content#keyUp";
export const ITEM_KEY_DOWN = "phlexui--combobox-content#keyDown";
export const ITEM_KEY_ENTER = "phlexui--combobox-content#keyEnter";
export const ITEM_KEY_ESC = "phlexui--combobox-content#keyEsc";

export default class extends Controller {
  static targets = ["list", "item", "empty", "group", "search"];

  connect() {
    document.addEventListener(POPOVER_OPENED, (event) => this.handlePopoverToggle(event), false);
    this.generateItemsIds();
  }

  disconnect() {
    document.removeEventListener(POPOVER_OPENED, (event) => this.handlePopoverToggle(event), false);
  }

  handlePopoverToggle(event) {
    const { closed } = event.detail;
    this.searchTarget.value = "";
    if (!closed) {
      this.searchTarget.focus();
      this.toggleVisibility(this.itemTargets, true);
      this.toggleVisibility(this.groupTargets, true);
      this.toggleVisibility(this.emptyTargets, false);
    }
  }

  handleKeyUp() {
    const id = this.getSelectedItemId();

    const event = new CustomEvent(ITEM_KEY_UP, { detail: { id } });
    document.dispatchEvent(event);
  }

  handleKeyDown() {
    const id = this.getSelectedItemId();
    const length = this.itemTargets.length;

    const event = new CustomEvent(ITEM_KEY_DOWN, { detail: { id, length } });
    document.dispatchEvent(event);
  }

  handleKeyEnter() {
    const id = this.getSelectedItemId();

    const event = new CustomEvent(ITEM_KEY_ENTER, { detail: { id } });
    document.dispatchEvent(event);
  }

  handleKeyEsc() {
    document.dispatchEvent(new CustomEvent(ITEM_KEY_ESC));
  }

  filter(event) {
    const query = this.sanitizeStr(event.target.value);

    this.toggleVisibility(this.itemTargets, false);

    const visibleItems = this.filterItems(query);
    this.toggleVisibility(visibleItems, true);

    this.toggleVisibility(this.emptyTargets, visibleItems.length === 0);

    this.updateGroupVisibility();
  }

  updateGroupVisibility() {
    this.groupTargets.forEach((group) => {
      const hasVisibleItems = group.querySelectorAll("[data-phlexui--combobox-content-target='item']:not(.hidden)").length > 0;
      this.toggleVisibility([group], hasVisibleItems);
    });
  }

  generateItemsIds() {
    const listId = this.listTarget.getAttribute("id");
    this.itemTargets.forEach((item, index) => {
      if (index === 0) item.setAttribute("aria-selected", "true");

      item.id = `${listId}-${index}`;
    });
  }

  filterItems(query) {
    return this.itemTargets.filter((item) => this.sanitizeStr(item.innerText).includes(query));
  }

  toggleVisibility(elements, isVisible) {
    elements.forEach((el) => el.classList.toggle("hidden", !isVisible));
  }

  sanitizeStr(str) {
    return str.toLowerCase().trim();
  }

  getSelectedItemId() {
    const selectedItem = this.itemTargets.find((item) => item.getAttribute("aria-selected") === "true");
    return selectedItem.getAttribute("id");
  }
}