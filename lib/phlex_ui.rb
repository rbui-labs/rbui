require "ruby-next"

require "ruby-next/language/setup"
RubyNext::Language.setup_gem_load_path(transpile: true)

require "active_support/core_ext/object/blank"
require "active_support/core_ext/string/inflections"
require "active_support/core_ext/string/output_safety"
require "json"
require "phlex"
require "zeitwerk"

loader = Zeitwerk::Loader.for_gem
loader.inflector.inflect(
  "phlex_ui" => "PhlexUI"
)
loader.setup # ready!

module PhlexUI
end

loader.eager_load
