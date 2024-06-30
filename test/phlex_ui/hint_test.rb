# frozen_string_literal: true

require "test_helper"

class PhlexUI::HintTest < Minitest::Test
  include Phlex::Testing::ViewHelper

  def test_render_with_all_items
    output = phlex_context do
      PhlexUI.Hint { "Can only contain letters, numbers, and underscores." }
    end

    assert_match(/Can only contain letters/, output)
  end
end
