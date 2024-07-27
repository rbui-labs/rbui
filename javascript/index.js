// Load and export all of the stimulus controllers
import { application } from "./rbui/application"

// Import all controller files
import AccordionController from './rbui/accordion_controller'
import AlertDialogController from './rbui/alert_dialog_controller'
import CalendarController from './rbui/calendar_controller'
import ChartController from './rbui/chart_controller'
import ClipboardController from './rbui/clipboard_controller'
import CollapsibleController from './rbui/collapsible_controller'
import CommandController from './rbui/command_controller'
import DialogController from './rbui/dialog_controller'
import DismissableController from './rbui/dismissable_controller'
import InputController from './rbui/input_controller'
import PopoverController from './rbui/popover_controller'
import SelectController from './rbui/select_controller'
import TabsController from './rbui/tabs_controller'
import TextController from './rbui/text_controller'
import ToggleThemeController from './rbui/toggle_theme_controller'
import SheetController from './rbui/sheet_controller'
import ComboboxController from './rbui/combobox/combobox_controller'
import ComboboxContentController from './rbui/combobox/combobox_content_controller'
import ComboboxItemController from './rbui/combobox/combobox_item_controller'

// Register all controllers
application.register('accordion', AccordionController)
application.register('alert-dialog', AlertDialogController)
application.register('calendar', CalendarController)
application.register('chart', ChartController)
application.register('clipboard', ClipboardController)
application.register('collapsible', CollapsibleController)
application.register('command', CommandController)
application.register('dialog', DialogController)
application.register('dismissable', DismissableController)
application.register('input', InputController)
application.register('popover', PopoverController)
application.register('select', SelectController)
application.register('tabs', TabsController)
application.register('text', TextController)
application.register('toggle-theme', ToggleThemeController)
application.register('sheet', SheetController)
application.register('phlexui--combobox', ComboboxController)
application.register('phlexui--combobox-content', ComboboxContentController)
application.register('phlexui--combobox-item', ComboboxItemController)

// Export all controllers so user of npm package can lazy load controllers
export { default as AccordionController } from './rbui/accordion_controller'
export { default as AlertDialogController } from './rbui/alert_dialog_controller'
export { default as CalendarController } from './rbui/calendar_controller'
export { default as ChartController } from './rbui/chart_controller'
export { default as ClipboardController } from './rbui/clipboard_controller'
export { default as CollapsibleController } from './rbui/collapsible_controller'
export { default as CommandController } from './rbui/command_controller'
export { default as DialogController } from './rbui/dialog_controller'
export { default as DismissableController } from './rbui/dismissable_controller'
export { default as InputController } from './rbui/input_controller'
export { default as PopoverController } from './rbui/popover_controller'
export { default as SelectController } from './rbui/select_controller'
export { default as TabsController } from './rbui/tabs_controller'
export { default as TextController } from './rbui/text_controller'
export { default as ToggleThemeController } from './rbui/toggle_theme_controller'
export { default as SheetController } from './rbui/sheet_controller'
export { default as ComboboxController } from './rbui/combobox/combobox_controller'
export { default as ComboboxContentController } from './rbui/combobox/combobox_content_controller'
export { default as ComboboxItemController } from './rbui/combobox/combobox_item_controller'

// Export application
export { application }