// Load and export all of the stimulus controllers
import { Application } from "@hotwired/stimulus";

const application = Application.start();

// Configure Stimulus development experience
application.debug = false;
window.Stimulus = application;

// Import all controller files
import ComboboxController from "./lib/rbui/combobox/combobox_controller";
import ComboboxContentController from "./lib/rbui/combobox/combobox_content_controller";
import ComboboxItemController from "./lib/rbui/combobox/combobox_item_controller";
import ThemeToggleController from "./lib/rbui/theme_toggle/theme_toggle_controller";
import TooltipController from "./lib/rbui/tooltip/tooltip_controller";
import SelectController from "./lib/rbui/select/select_controller";
import SelectItemController from "./lib/rbui/select/select_item_controller";

// Register all controllers
application.register("rbui--combobox", ComboboxController);
application.register("rbui--combobox-content", ComboboxContentController);
application.register("rbui--combobox-item", ComboboxItemController);
application.register("rbui--theme-toggle", ThemeToggleController);
application.register("rbui--tooltip", TooltipController);
application.register("rbui--select", SelectController);
application.register("rbui--select-item", SelectItemController);

// Export all controllers so user of npm package can lazy load controllers
export { default as ComboboxController } from "./lib/rbui/combobox/combobox_controller";
export { default as ComboboxContentController } from "./lib/rbui/combobox/combobox_content_controller";
export { default as ComboboxItemController } from "./lib/rbui/combobox/combobox_item_controller";
export { default as ThemeToggleController } from "./lib/rbui/theme_toggle/theme_toggle_controller";
export { default as TooltipController } from "./lib/rbui/tooltip/tooltip_controller";
export { default as SelectController } from "./lib/rbui/select/select_controller";
export { default as SelectItemController } from "./lib/rbui/select/select_item_controller";

// Export application
export { application };
