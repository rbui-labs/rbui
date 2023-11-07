require 'phlex'
require 'zeitwerk'

loader = Zeitwerk::Loader.for_gem
loader.inflector.inflect(
  "phlex_ui" => "PhlexUI",
)
loader.setup # ready!

module PhlexUI
end

loader.eager_load