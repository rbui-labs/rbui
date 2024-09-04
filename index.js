// Load and export all of the stimulus controllers
import { Application } from "@hotwired/stimulus";

const application = Application.start();

// Configure Stimulus development experience
application.debug = false;
window.Stimulus = application;

// Import all controller files
import AccordionController from "./lib/rbui/accordion/accordion_controller";
import AlertDialogController from "./lib/rbui/alert_dialog/alert_dialog_controller";
import CalendarController from "./lib/rbui/calendar/calendar_controller";
import CalendarInputController from "./lib/rbui/calendar/calendar_input_controller";
import CollapsibleController from "./lib/rbui/collapsible/collapsible_controller";
import CheckboxGroupController from "./lib/rbui/checkbox/checkbox_group_controller";
import ComboboxController from "./lib/rbui/combobox/combobox_controller";
import ComboboxContentController from "./lib/rbui/combobox/combobox_content_controller";
import ComboboxItemController from "./lib/rbui/combobox/combobox_item_controller";
import DialogController from "./lib/rbui/dialog/dialog_controller";
import FormFieldController from "./lib/rbui/form/form_field_controller";
import HoverCardController from "./lib/rbui/hover_card/hover_card_controller";
import ThemeToggleController from "./lib/rbui/theme_toggle/theme_toggle_controller";
import TooltipController from "./lib/rbui/tooltip/tooltip_controller";
import SelectController from "./lib/rbui/select/select_controller";
import SelectItemController from "./lib/rbui/select/select_item_controller";
import SheetController from "./lib/rbui/sheet/sheet_controller";
import SheetContentController from "./lib/rbui/sheet/sheet_content_controller";

// Register all controllers
application.register("rbui--accordion", AccordionController);
application.register("rbui--alert-dialog", AlertDialogController);
application.register("rbui--calendar", CalendarController);
application.register("rbui--calendar-input", CalendarInputController);
application.register("rbui--collapsible", CollapsibleController);
application.register("rbui--checkbox-group", CheckboxGroupController);
application.register("rbui--combobox", ComboboxController);
application.register("rbui--combobox-content", ComboboxContentController);
application.register("rbui--combobox-item", ComboboxItemController);
application.register("rbui--dialog", DialogController);
application.register("rbui--form-field", FormFieldController);
application.register("rbui--hover-card", HoverCardController);
application.register("rbui--theme-toggle", ThemeToggleController);
application.register("rbui--tooltip", TooltipController);
application.register("rbui--select", SelectController);
application.register("rbui--select-item", SelectItemController);
application.register("rbui--sheet", SheetController);
application.register("rbui--sheet-content", SheetContentController);

// Export all controllers so user of npm package can lazy load controllers
export { default as AccordionController } from "./lib/rbui/accordion/accordion_controller";
export { default as AlertDialogController } from "./lib/rbui/alert_dialog/alert_dialog_controller";
export { default as CalendarController } from "./lib/rbui/calendar/calendar_controller";
export { default as CalendarInputController } from "./lib/rbui/calendar/calendar_input_controller";
export { default as CollapsibleController } from "./lib/rbui/collapsible/collapsible_controller";
export { default as CheckboxGroupController } from "./lib/rbui/checkbox/checkbox_group_controller";
export { default as ComboboxController } from "./lib/rbui/combobox/combobox_controller";
export { default as ComboboxContentController } from "./lib/rbui/combobox/combobox_content_controller";
export { default as ComboboxItemController } from "./lib/rbui/combobox/combobox_item_controller";
export { default as DialogController } from "./lib/rbui/dialog/dialog_controller";
export { default as FormFieldController } from "./lib/rbui/form/form_field_controller";
export { default as HoverCardController } from "./lib/rbui/hover_card/hover_card_controller";
export { default as ThemeToggleController } from "./lib/rbui/theme_toggle/theme_toggle_controller";
export { default as TooltipController } from "./lib/rbui/tooltip/tooltip_controller";
export { default as SelectController } from "./lib/rbui/select/select_controller";
export { default as SelectItemController } from "./lib/rbui/select/select_item_controller";
export { default as SheetController } from "./lib/rbui/sheet/sheet_controller";
export { default as SheetContentController } from "./lib/rbui/sheet/sheet_content_controller";

// Export application
export { application };
