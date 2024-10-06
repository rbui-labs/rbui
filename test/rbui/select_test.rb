# frozen_string_literal: true

require "test_helper"

class RBUI::SelectTest < Minitest::Test
  def test_render_with_all_items
    people = [
      ["John Doe", 1],
      ["Jane Doe", 2],
      ["Sam Smith", 3]
    ]

    output = phlex_context do
      RBUI.Select do
        RBUI.SelectInput(name: "NAME")
        RBUI.SelectTrigger do
          RBUI.SelectValue(placeholder: "Placeholder")
        end
        RBUI.SelectContent(outlet_id: "1") do
          RBUI.SelectGroup do
            people.each do |person|
              RBUI.SelectItem(value: person[1]) { person[0] }
            end
          end
        end
      end
    end

    assert_match(/John/, output)
    assert_match('name="NAME"', output)
  end
end
