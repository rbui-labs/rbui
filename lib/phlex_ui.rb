require "ruby-next"

require "ruby-next/language/setup"
RubyNext::Language.setup_gem_load_path(transpile: true)

require "phlex"
require "zeitwerk"
require "lookbook"

loader = Zeitwerk::Loader.for_gem
loader.inflector.inflect(
  "phlex_ui" => "PhlexUI"
)
loader.setup # ready!

module PhlexUI
end

loader.eager_load

# This code will iterate over each constant defined in PhlexUI::Components (i.e., each of your components),
# and define a constant with the same name in PhlexUI that points to the component. This will allow you
# to access all your components directly through PhlexUI.
#
# @example Accessing a component through PhlexUI
#   PhlexUI::Button.new(content: "Click me!")
PhlexUI::Components.constants.each do |component|
  PhlexUI.const_set(component, PhlexUI::Components.const_get(component))
end
