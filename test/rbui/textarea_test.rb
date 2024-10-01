# frozen_string_literal: true

require "test_helper"

class RBUI::TextareaTest < Minitest::Test
  include Phlex::Testing::ViewHelper

  def test_render_with_all_items
    output = phlex_context do
      RBUI.Textarea(rows: 4, placeholder: "Comment")
    end

    assert_match(/Comment/, output)
  end

  def test_render_with_value
    output = phlex_context do
      RBUI.Textarea(rows: 4) { "Value" }
    end

    assert_match(/Value/, output)
  end
end
