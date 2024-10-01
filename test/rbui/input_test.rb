# frozen_string_literal: true

require "test_helper"

class RBUI::InputTest < Minitest::Test
  include Phlex::Testing::ViewHelper

  def test_render_with_all_items
    output = phlex_context do
      RBUI.Input(type: "email", placeholder: "Email")
    end

    assert_match(/Email/, output)
  end

  def test_render_with_value
    output = phlex_context do
      RBUI.Input(type: "email", value: "user@email.com")
    end

    assert_match(/user@email.com/, output)
  end
end
