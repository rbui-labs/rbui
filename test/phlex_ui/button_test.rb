# frozen_string_literal: true

require "test_helper"

class PhlexUI::ButtonTest < Minitest::Test
  include Phlex::Testing::ViewHelper

  def test_render_with_all_items
    output = phlex_context do
      PhlexUI.Button(variant: :primary) { "Primary" }
    end

    assert_match(/Primary/, output)
  end
end
