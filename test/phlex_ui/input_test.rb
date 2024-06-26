# frozen_string_literal: true

require "test_helper"

class PhlexUI::InputTest < Minitest::Test
  include Phlex::Testing::ViewHelper

  def test_render_with_all_items
    output = phlex_context do
      PhlexUI.Input(type: "email", placeholder: "Email")
    end

    assert_match(/Email/, output)
  end
end
