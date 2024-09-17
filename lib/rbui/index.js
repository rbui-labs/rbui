// Load and export all of the stimulus controllers
import { Application } from "@hotwired/stimulus";

const application = Application.start();

// Configure Stimulus development experience
application.debug = false;
window.Stimulus = application;

// Import all controller files
import AccordionController from "./accordion/accordion_controller";
import AlertDialogController from "./alert_dialog/alert_dialog_controller";
import CalendarController from "./calendar/calendar_controller";
import CalendarInputController from "./calendar/calendar_input_controller";
import CollapsibleController from "./collapsible/collapsible_controller";
import ChartController from "./chart/chart_controller";
import CheckboxGroupController from "./checkbox/checkbox_group_controller";
import ClipboardController from "./clipboard/clipboard_controller";
import ComboboxController from "./combobox/combobox_controller";
import ComboboxContentController from "./combobox/combobox_content_controller";
import ComboboxItemController from "./combobox/combobox_item_controller";
import CommandController from "./command/command_controller";
import ContextMenuController from "./context_menu/context_menu_controller";
import DialogController from "./dialog/dialog_controller";
import DropdownMenuController from "./dropdown_menu/dropdown_menu_controller";
import FormFieldController from "./form/form_field_controller";
import HoverCardController from "./hover_card/hover_card_controller";
import PopoverController from "./popover/popover_controller";
import TabsController from "./tabs/tabs_controller";
import ThemeToggleController from "./theme_toggle/theme_toggle_controller";
import TooltipController from "./tooltip/tooltip_controller";
import SelectController from "./select/select_controller";
import SelectItemController from "./select/select_item_controller";
import SheetController from "./sheet/sheet_controller";
import SheetContentController from "./sheet/sheet_content_controller";

// Register all controllers
application.register("rbui--accordion", AccordionController);
application.register("rbui--alert-dialog", AlertDialogController);
application.register("rbui--calendar", CalendarController);
application.register("rbui--calendar-input", CalendarInputController);
application.register("rbui--collapsible", CollapsibleController);
application.register("rbui--chart", ChartController);
application.register("rbui--checkbox-group", CheckboxGroupController);
application.register("rbui--clipboard", ClipboardController);
application.register("rbui--combobox", ComboboxController);
application.register("rbui--combobox-content", ComboboxContentController);
application.register("rbui--combobox-item", ComboboxItemController);
application.register("rbui--command", CommandController);
application.register("rbui--context-menu", ContextMenuController);
application.register("rbui--dialog", DialogController);
application.register("rbui--dropdown-menu", DropdownMenuController);
application.register("rbui--form-field", FormFieldController);
application.register("rbui--hover-card", HoverCardController);
application.register("rbui--popover", PopoverController);
application.register("rbui--tabs", TabsController);
application.register("rbui--theme-toggle", ThemeToggleController);
application.register("rbui--tooltip", TooltipController);
application.register("rbui--select", SelectController);
application.register("rbui--select-item", SelectItemController);
application.register("rbui--sheet", SheetController);
application.register("rbui--sheet-content", SheetContentController);

// Export all controllers so user of npm package can lazy load controllers
export { default as AccordionController } from "./accordion/accordion_controller";
export { default as AlertDialogController } from "./alert_dialog/alert_dialog_controller";
export { default as CalendarController } from "./calendar/calendar_controller";
export { default as CalendarInputController } from "./calendar/calendar_input_controller";
export { default as CollapsibleController } from "./collapsible/collapsible_controller";
export { default as ChartController } from "./chart/chart_controller";
export { default as CheckboxGroupController } from "./checkbox/checkbox_group_controller";
export { default as ClipboardController } from "./clipboard/clipboard_controller";
export { default as ComboboxController } from "./combobox/combobox_controller";
export { default as ComboboxContentController } from "./combobox/combobox_content_controller";
export { default as ComboboxItemController } from "./combobox/combobox_item_controller";
export { default as CommandController } from "./command/command_controller";
export { default as ContextMenuController } from "./context_menu/context_menu_controller";
export { default as DialogController } from "./dialog/dialog_controller";
export { default as DropdownMenuController } from "./dropdown_menu/dropdown_menu_controller";
export { default as FormFieldController } from "./form/form_field_controller";
export { default as HoverCardController } from "./hover_card/hover_card_controller";
export { default as PopoverController } from "./popover/popover_controller";
export { default as TabsController } from "./tabs/tabs_controller";
export { default as ThemeToggleController } from "./theme_toggle/theme_toggle_controller";
export { default as TooltipController } from "./tooltip/tooltip_controller";
export { default as SelectController } from "./select/select_controller";
export { default as SelectItemController } from "./select/select_item_controller";
export { default as SheetController } from "./sheet/sheet_controller";
export { default as SheetContentController } from "./sheet/sheet_content_controller";

// Export application
export { application };
