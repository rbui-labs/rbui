# frozen_string_literal: true

require "test_helper"

class PhlexUI::InputErrorTest < Minitest::Test
  include Phlex::Testing::ViewHelper

  def test_render_with_default_attributes
    output = render PhlexUI::InputError.new

    refute_empty(output)
  end
end
