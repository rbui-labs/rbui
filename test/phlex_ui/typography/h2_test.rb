# frozen_string_literal: true

require "test_helper"

class PhlexUI::Typography::H2Test < Minitest::Test
  include Phlex::Testing::ViewHelper

  def test_render_with_default_attributes
    output = render PhlexUI::Typography::H2.new

    refute_empty(output)
  end
end
