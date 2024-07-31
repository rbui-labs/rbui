require "json"
require "phlex"
require "zeitwerk"

# WARNING: Zeitwerk defines the constant RBUI after the directory
# loader = Zeitwerk::Loader.for_gem
# temporarily disable the constant to avoid errors with dual module definition
loader = Zeitwerk::Loader.for_gem(warn_on_extra_files: false)

loader.inflector.inflect(
  "phlex_ui" => "PhlexUI",
  "rbui" => "RBUI"
)

loader.collapse("#{__dir__}/phlex_ui/accordion")
loader.collapse("#{__dir__}/phlex_ui/alert_dialog")
loader.collapse("#{__dir__}/phlex_ui/alert")
loader.collapse("#{__dir__}/phlex_ui/aspect_ratio")
loader.collapse("#{__dir__}/phlex_ui/avatar")
loader.collapse("#{__dir__}/phlex_ui/badge")
loader.collapse("#{__dir__}/phlex_ui/button")
loader.collapse("#{__dir__}/phlex_ui/calendar")
loader.collapse("#{__dir__}/phlex_ui/card")
loader.collapse("#{__dir__}/phlex_ui/chart")
loader.collapse("#{__dir__}/phlex_ui/checkbox")
loader.collapse("#{__dir__}/phlex_ui/clipboard")
loader.collapse("#{__dir__}/phlex_ui/codeblock")
loader.collapse("#{__dir__}/phlex_ui/collapsible")
loader.collapse("#{__dir__}/phlex_ui/command")
loader.collapse("#{__dir__}/phlex_ui/context_menu")
loader.collapse("#{__dir__}/phlex_ui/dialog")
loader.collapse("#{__dir__}/phlex_ui/dropdown_menu")
loader.collapse("#{__dir__}/phlex_ui/form")
loader.collapse("#{__dir__}/phlex_ui/hint")
loader.collapse("#{__dir__}/phlex_ui/hover_card")
loader.collapse("#{__dir__}/phlex_ui/input_error")
loader.collapse("#{__dir__}/phlex_ui/input")
loader.collapse("#{__dir__}/phlex_ui/link")
loader.collapse("#{__dir__}/phlex_ui/pagination")
loader.collapse("#{__dir__}/phlex_ui/popover")
loader.collapse("#{__dir__}/phlex_ui/select")
loader.collapse("#{__dir__}/phlex_ui/sheet")
loader.collapse("#{__dir__}/phlex_ui/shortcut_key")
loader.collapse("#{__dir__}/phlex_ui/table")
loader.collapse("#{__dir__}/phlex_ui/tabs")
loader.collapse("#{__dir__}/phlex_ui/theme_toggle")
loader.collapse("#{__dir__}/phlex_ui/tooltip")
loader.collapse("#{__dir__}/phlex_ui/typography")

# RBUI
loader.collapse("#{__dir__}/rbui/combobox")

loader.setup # ready!

module PhlexUI
  extend Phlex::Kit

  autoload :Accordion, "phlex_ui/accordion"
  autoload :AlertDialog, "phlex_ui/alert_dialog"
  autoload :Alert, "phlex_ui/alert"
  autoload :AspectRatio, "phlex_ui/aspect_ratio"
  autoload :Avatar, "phlex_ui/avatar"
  autoload :Badge, "phlex_ui/badge"
  autoload :Button, "phlex_ui/button"
  autoload :Calendar, "phlex_ui/calendar"
  autoload :Card, "phlex_ui/card"
  autoload :Chart, "phlex_ui/chart"
  autoload :Checkbox, "phlex_ui/checkbox"
  autoload :Clipboard, "phlex_ui/clipboard"
  autoload :Codeblock, "phlex_ui/codeblock"
  autoload :Collapsible, "phlex_ui/collapsible"
  autoload :Command, "phlex_ui/command"
  autoload :ContextMenu, "phlex_ui/context_menu"
  autoload :Dialog, "phlex_ui/dialog"
  autoload :DropdownMenu, "phlex_ui/dropdown_menu"
  autoload :Form, "phlex_ui/form"
  autoload :Hint, "phlex_ui/hint"
  autoload :HoverCard, "phlex_ui/hover_card"
  autoload :InputError, "phlex_ui/input_error"
  autoload :Input, "phlex_ui/input"
  autoload :Label, "phlex_ui/label"
  autoload :Link, "phlex_ui/link"
  autoload :Pagination, "phlex_ui/pagination"
  autoload :Popover, "phlex_ui/popover"
  autoload :Select, "phlex_ui/select"
  autoload :Sheet, "phlex_ui/sheet"
  autoload :ShortcutKey, "phlex_ui/shortcut_key"
  autoload :Table, "phlex_ui/table"
  autoload :Tabs, "phlex_ui/tabs"
  autoload :ThemeToggle, "phlex_ui/theme_toggle"
  autoload :Tooltip, "phlex_ui/tooltip"
  autoload :Typography, "phlex_ui/typography"
end

loader.eager_load
