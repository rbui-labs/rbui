import { Controller } from "@hotwired/stimulus"
import tippy from "tippy.js";

// Connects to data-controller="accordion"
export default class extends Controller {
  static targets = ['trigger', 'source', 'successPopover', 'errorPopover']

  connect() {
    this.tippySuccess = this.initializeTippy('success');
    this.tippyError = this.initializeTippy('error');
  }

  disconnect() {
    this.tippySuccess.destroy();
    this.tippyError.destroy();
  }

  copy() {
    let sourceElement = this.sourceTarget.children[0];
    if (!sourceElement) {
      this.showErrorPopover();
      return;
    }
    let textToCopy = sourceElement.tagName === 'INPUT' ? sourceElement.value : sourceElement.innerText;
    navigator.clipboard.writeText(textToCopy).then(() => {
      this.showSuccessPopover();
    }).catch(() => {
      this.showErrorPopover();
    })
  }

  showSuccessPopover() {
    this.tippySuccess.show();
    setTimeout(() => this.hideSuccessPopover(), 2500);
  }

  showErrorPopover() {
    this.tippyError.show();
    setTimeout(() => this.hideErrorPopover(), 2500);
  }

  hideSuccessPopover() {
    this.tippySuccess.hide();
  }

  hideErrorPopover() {
    this.tippyError.hide();
  }

  initializeTippy(type) {
    let tippyElement = type === 'success' ? this.successPopoverTarget : this.errorPopoverTarget;
    const options = {
      content: tippyElement.innerHTML,
      allowHTML: true,
      interactive: false,
      trigger: 'manual',
    };

    return tippy(this.triggerTarget, options);
  }
}