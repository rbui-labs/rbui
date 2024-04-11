# frozen_string_literal: true

require "test_helper"

class PhlexUI::Typography::H1Test < Minitest::Test
  include Phlex::Testing::ViewHelper

  def test_render_with_default_attributes
    output = render PhlexUI::Typography::H1.new

    refute_empty(output)
  end
end
