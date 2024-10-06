# frozen_string_literal: true

require "test_helper"

class RBUI::CheckboxTest < Minitest::Test
  def test_render_with_all_items
    output = phlex_context do
      RBUI.Checkbox(id: "terms")
    end

    assert_match(/terms/, output)
  end
end
