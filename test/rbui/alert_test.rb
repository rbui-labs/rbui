# frozen_string_literal: true

require "test_helper"

class RBUI::AlertTest < Minitest::Test
  def test_render_with_all_items
    output = phlex_context do
      RBUI.Alert do
        RBUI.AlertTitle { "Pro tip" }
        RBUI.AlertDescription { "Simply, don't include an icon and your alert will look like this." }
      end
    end

    assert_match(/Pro tip/, output)
  end
end
