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

// Register all controllers
application.register("rbui--combobox", ComboboxController);
application.register("rbui--combobox-content", ComboboxContentController);
application.register("rbui--combobox-item", ComboboxItemController);
application.register("rbui--theme-toggle", ThemeToggleController);

// Export all controllers so user of npm package can lazy load controllers
export { default as ComboboxController } from "./lib/rbui/combobox/combobox_controller";
export { default as ComboboxContentController } from "./lib/rbui/combobox/combobox_content_controller";
export { default as ComboboxItemController } from "./lib/rbui/combobox/combobox_item_controller";
export { default as ThemeToggleController } from "./lib/rbui/theme_toggle/theme_toggle_controller";

// Export application
export { application };
