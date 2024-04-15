# frozen_string_literal: true

require "test_helper"

class PhlexUI::ShortcutKeyTest < Minitest::Test
  include Phlex::Testing::ViewHelper

  def test_render_with_default_attributes
    output = render PhlexUI::ShortcutKey.new

    refute_empty(output)
  end
end
