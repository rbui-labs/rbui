# frozen_string_literal: true

require "test_helper"

class PhlexUI::Sheet::MiddleTest < Minitest::Test
  include Phlex::Testing::ViewHelper

  def test_render_with_default_attributes
    output = render PhlexUI::Sheet::Middle.new

    refute_empty(output)
  end
end
