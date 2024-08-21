# frozen_string_literal: true

require "test_helper"

class PhlexUI::SelectTest < Minitest::Test
  include Phlex::Testing::ViewHelper

  def test_render_with_all_items
    people = [
      ["John Doe", 1],
      ["Jane Doe", 2],
      ["Sam Smith", 3]
    ]

    output = phlex_context do
      PhlexUI.Select do
        RBUI.SelectInput(name: "NAME")
        PhlexUI.SelectTrigger do
          PhlexUI.SelectValue(placeholder: "Placeholder")
        end
        PhlexUI.SelectContent(outlet_id: "1") do
          PhlexUI.SelectGroup do
            people.each do |person|
              PhlexUI.SelectItem(value: person[1]) { person[0] }
            end
          end
        end
      end
    end

    assert_match(/John/, output)
    assert_match('name="NAME"', output)
  end
end
