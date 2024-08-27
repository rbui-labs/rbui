require "test_helper"
require "generators/phlex_ui/phlex_ui_generator"

class PhlexUiGeneratorTest < Rails::Generators::TestCase
  tests PhlexUiGenerator
  destination Rails.root.join("tmp/generators")
  setup :prepare_destination

  # test "generator runs without errors" do
  #   assert_nothing_raised do
  #     run_generator ["arguments"]
  #   end
  # end
end
