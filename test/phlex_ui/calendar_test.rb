# frozen_string_literal: true

require "test_helper"

class PhlexUI::CalendarTest < Minitest::Test
  include Phlex::Testing::ViewHelper

  def test_render_with_all_items
    output = phlex_context do
      PhlexUI.Input(type: "string", placeholder: "Select a date", class: "rounded-md border shadow", id: "date", data_controller: "input")
      PhlexUI.Calendar(input_id: "#date", class: "rounded-md border shadow")
    end

    assert_match(/Select a date/, output)
  end
end
