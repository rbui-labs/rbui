# frozen_string_literal: true

require "test_helper"

class PhlexUI::ComboboxTest < Minitest::Test
  include Phlex::Testing::ViewHelper

  def test_render_with_all_items
    output = phlex_context do
      PhlexUI.Combobox do
        PhlexUI.ComboboxTrigger(placeholder: "Select event...", aria_controls: "list")
        PhlexUI.ComboboxContent(id: "list") do
          PhlexUI.ComboboxSearchInput(placeholder: "Search event...")
          PhlexUI.ComboboxList do
            PhlexUI.ComboboxEmpty { "No results found." }
            PhlexUI.ComboboxGroup(heading: "Suggestions") do
              PhlexUI.ComboboxItem(value: "railsworld") do |item|
                item.span { "Rails World" }
              end
              PhlexUI.ComboboxItem(value: "tropicalrb") do |item|
                item.span { "Tropical.rb" }
              end
              PhlexUI.ComboboxItem(value: "friendly.rb") do |item|
                item.span { "Friendly.rb" }
              end
            end

            PhlexUI.ComboboxSeparator()

            PhlexUI.ComboboxGroup(heading: "Others") do
              PhlexUI.ComboboxItem(value: "railsconf") do |item|
                item.span { "RailsConf" }
              end
              PhlexUI.ComboboxItem(value: "euruko") do |item|
                item.span { "Euruko" }
              end
              PhlexUI.ComboboxItem(value: "rubykaigi") do |item|
                item.span { "RubyKaigi" }
              end
            end
          end
        end
      end
    end

    assert_match(/Tropical.rb/, output)
  end
end
