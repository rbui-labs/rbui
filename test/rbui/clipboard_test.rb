# frozen_string_literal: true

require "test_helper"

class RBUI::ClipboardTest < Minitest::Test
  include Phlex::Testing::ViewHelper

  def test_render_with_all_items
    output = phlex_context do
      RBUI.Clipboard(success: "Copied!", error: "Copy Failed!")
    end

    assert_match(/Copied/, output)
  end
end
