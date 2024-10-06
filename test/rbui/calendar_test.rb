# frozen_string_literal: true

require "test_helper"

class RBUI::CalendarTest < Minitest::Test
  def test_render_with_all_items
    output = phlex_context do
      RBUI.Input(type: "string", placeholder: "Select a date", class: "rounded-md border shadow", id: "date", data_controller: "rbui--input")
      RBUI.Calendar(input_id: "#date", class: "rounded-md border shadow")
    end

    assert_match(/Select a date/, output)
  end
end
