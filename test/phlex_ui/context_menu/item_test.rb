# frozen_string_literal: true

require "test_helper"

class PhlexUI::ContextMenu::ItemTest < Minitest::Test
  include Phlex::Testing::ViewHelper

  def test_render_with_default_attributes
    output = render PhlexUI::ContextMenu::Item.new { "test" }

    refute_empty(output)
  end
end
