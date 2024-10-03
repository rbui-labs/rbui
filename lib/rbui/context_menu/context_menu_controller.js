import { Controller } from "@hotwired/stimulus";
import {
  computePosition,
  flip,
  shift,
  offset,
  autoUpdate,
} from "@floating-ui/dom";

const ContextMenuManager = {
  activeMenu: null,
  setActiveMenu(menu) {
    if (this.activeMenu && this.activeMenu !== menu) this.activeMenu.close();
    this.activeMenu = menu;
  },
  clearActiveMenu() {
    this.activeMenu = null;
  },
};

export default class extends Controller {
  static targets = ["trigger", "content", "menuItem"];
  static values = {
    open: Boolean,
    options: { type: Object, default: {} },
    trigger: { type: String, default: "contextmenu" },
  };

  connect() {
    this.addEventListeners();
  }

  disconnect() {
    this.removeEventListeners();
    this.cleanup?.();
    if (ContextMenuManager.activeMenu === this)
      ContextMenuManager.clearActiveMenu();
  }

  addEventListeners() {
    this.triggerTarget.addEventListener("contextmenu", this.handleContextMenu);
    this.triggerTarget.addEventListener("click", this.handleTriggerClick);
    document.addEventListener("click", this.handleOutsideClick);
    document.addEventListener("keydown", this.handleKeydown);
  }

  removeEventListeners() {
    this.triggerTarget.removeEventListener(
      "contextmenu",
      this.handleContextMenu,
    );
    this.triggerTarget.removeEventListener("click", this.handleTriggerClick);
    document.removeEventListener("click", this.handleOutsideClick);
    document.removeEventListener("keydown", this.handleKeydown);
  }

  handleContextMenu = (event) => {
    event.preventDefault();
    this.openValue = true;
    ContextMenuManager.setActiveMenu(this);
    this.showMenu(event);
  };

  handleTriggerClick = () => {
    if (this.openValue) this.close();
  };

  handleOutsideClick = (event) => {
    if (!this.element.contains(event.target) && this.openValue) this.close();
  };

  handleKeydown = (e) => {
    if (!this.openValue) return;

    switch (e.key) {
      case "ArrowDown":
      case "ArrowUp":
        e.preventDefault();
        this.updateSelectedItem(e.key === "ArrowDown" ? 1 : -1);
        break;
      case "Enter":
        e.preventDefault();
        this.menuItemTargets[this.selectedIndex]?.click();
        break;
      case "Escape":
        e.preventDefault();
        this.close();
        break;
    }
  };

  showMenu(event) {
    this.contentTarget.classList.remove("hidden");
    this.contentTarget.dataset.state = "open";
    this.updatePosition(event);
    requestAnimationFrame(() => {
      this.contentTarget.classList.add("animate-in", "fade-in-0", "zoom-in-95");
    });
  }

  hideMenu() {
    this.contentTarget.dataset.state = "closed";
    this.contentTarget.classList.replace("animate-in", "animate-out");
    this.contentTarget.classList.replace("fade-in-0", "fade-out-0");
    this.contentTarget.classList.replace("zoom-in-95", "zoom-out-95");
    setTimeout(() => {
      this.contentTarget.classList.add("hidden");
      this.contentTarget.classList.remove(
        "animate-out",
        "fade-out-0",
        "zoom-out-95",
      );
      this.cleanup?.();
    }, 150);
  }

  updatePosition(event) {
    this.cleanup?.();
    const virtualElement = {
      getBoundingClientRect: () => ({
        width: 0,
        height: 0,
        top: event.clientY,
        right: event.clientX,
        bottom: event.clientY,
        left: event.clientX,
      }),
    };

    this.cleanup = autoUpdate(virtualElement, this.contentTarget, () => {
      computePosition(virtualElement, this.contentTarget, {
        placement: this.optionsValue.placement || "bottom-start",
        middleware: [flip(), shift(), offset(4)],
      }).then(({ x, y }) => {
        Object.assign(this.contentTarget.style, {
          left: `${x}px`,
          top: `${y}px`,
        });
      });
    });
  }

  updateSelectedItem(direction) {
    const visibleItems = this.menuItemTargets.filter(
      (item) => !item.classList.contains("hidden"),
    );
    if (visibleItems.length === 0) return;

    let currentIndex = visibleItems.findIndex(
      (item) => item.getAttribute("aria-selected") === "true",
    );
    if (currentIndex >= 0)
      visibleItems[currentIndex].removeAttribute("aria-selected");

    currentIndex =
      (currentIndex + direction + visibleItems.length) % visibleItems.length;
    visibleItems[currentIndex].setAttribute("aria-selected", "true");
    visibleItems[currentIndex].focus();
  }

  close() {
    this.openValue = false;
    this.hideMenu();
    ContextMenuManager.clearActiveMenu();
  }
}
