# frozen_string_literal: true

require "test_helper"

class PhlexUI::BadgeTest < Minitest::Test
  include Phlex::Testing::ViewHelper

  def test_render_with_all_items
    output = phlex_context do
      PhlexUI.Badge { "Badge" }
    end

    assert_match(/Badge/, output)
  end
end
