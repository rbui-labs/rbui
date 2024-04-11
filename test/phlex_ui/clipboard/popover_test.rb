# frozen_string_literal: true

require "test_helper"

class PhlexUI::Clipboard::PopoverTest < Minitest::Test
  include Phlex::Testing::ViewHelper

  def test_render_with_default_attributes
    output = render PhlexUI::Clipboard::Popover.new(type: :success)

    refute_empty(output)
  end
end
