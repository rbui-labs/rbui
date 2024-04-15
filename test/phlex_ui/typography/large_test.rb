# frozen_string_literal: true

require "test_helper"

class PhlexUI::Typography::LargeTest < Minitest::Test
  include Phlex::Testing::ViewHelper

  def test_render_with_default_attributes
    output = render PhlexUI::Typography::Large.new

    refute_empty(output)
  end
end
