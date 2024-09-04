// Load and export all of the stimulus controllers
import { Application } from "@hotwired/stimulus";

const application = Application.start();

// Configure Stimulus development experience
application.debug = false;
window.Stimulus = application;

// Import all controller files
import AccordionController from "./accordion/accordion_controller";
import ComboboxController from "./combobox/combobox_controller";
import ComboboxContentController from "./combobox/combobox_content_controller";
import ComboboxItemController from "./combobox/combobox_item_controller";
import FormFieldController from "./form/form_field_controller";
import ThemeToggleController from "./theme_toggle/theme_toggle_controller";
import TooltipController from "./tooltip/tooltip_controller";
import SelectController from "./select/select_controller";
import SelectItemController from "./select/select_item_controller";
import SheetController from "./sheet/sheet_controller";
import SheetContentController from "./sheet/sheet_content_controller";

// Register all controllers
application.register("rbui--accordion", AccordionController);
application.register("rbui--combobox", ComboboxController);
application.register("rbui--combobox-content", ComboboxContentController);
application.register("rbui--combobox-item", ComboboxItemController);
application.register("rbui--form-field", FormFieldController);
application.register("rbui--theme-toggle", ThemeToggleController);
application.register("rbui--tooltip", TooltipController);
application.register("rbui--select", SelectController);
application.register("rbui--select-item", SelectItemController);
application.register("rbui--sheet", SheetController);
application.register("rbui--sheet-content", SheetContentController);

// Export all controllers so user of npm package can lazy load controllers
export { default as AccordionController } from "./accordion/accordion_controller";
export { default as ComboboxController } from "./combobox/combobox_controller";
export { default as ComboboxContentController } from "./combobox/combobox_content_controller";
export { default as ComboboxItemController } from "./combobox/combobox_item_controller";
export { default as FormFieldController } from "./form/form_field_controller";
export { default as ThemeToggleController } from "./theme_toggle/theme_toggle_controller";
export { default as TooltipController } from "./tooltip/tooltip_controller";
export { default as SelectController } from "./select/select_controller";
export { default as SelectItemController } from "./select/select_item_controller";
export { default as SheetController } from "./sheet/sheet_controller";
export { default as SheetContentController } from "./sheet/sheet_content_controller";

// Export application
export { application };
