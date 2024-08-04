# frozen_string_literal: true

require "test_helper"

class RBUI::ComboboxTest < Minitest::Test
  include Phlex::Testing::ViewHelper

  def test_render_with_all_items
    output = phlex_context do
      RBUI.Combobox do
        RBUI.ComboboxTrigger(placeholder: "Select event...", aria_controls: "list")
        RBUI.ComboboxContent(id: "list") do
          RBUI.ComboboxSearchInput(placeholder: "Search event...")
          RBUI.ComboboxList do
            RBUI.ComboboxEmpty { "No results found." }
            RBUI.ComboboxGroup(heading: "Suggestions") do
              RBUI.ComboboxItem(value: "railsworld") do |item|
                item.span { "Rails World" }
              end
              RBUI.ComboboxItem(value: "tropicalrb") do |item|
                item.span { "Tropical.rb" }
              end
              RBUI.ComboboxItem(value: "friendly.rb") do |item|
                item.span { "Friendly.rb" }
              end
            end

            RBUI.ComboboxSeparator()

            RBUI.ComboboxGroup(heading: "Others") do
              RBUI.ComboboxItem(value: "railsconf") do |item|
                item.span { "RailsConf" }
              end
              RBUI.ComboboxItem(value: "euruko") do |item|
                item.span { "Euruko" }
              end
              RBUI.ComboboxItem(value: "rubykaigi") do |item|
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
