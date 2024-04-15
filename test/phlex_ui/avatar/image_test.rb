# frozen_string_literal: true

require "test_helper"

class PhlexUI::Avatar::ImageTest < Minitest::Test
  include Phlex::Testing::ViewHelper

  def test_render_with_default_attributes
    output = render PhlexUI::Avatar::Image.new(src: "test.jpg")

    refute_empty(output)
  end
end
