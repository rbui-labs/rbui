# frozen_string_literal: true

require "test_helper"

class PhlexUI::Calendar::DaysTest < Minitest::Test
  include Phlex::Testing::ViewHelper

  def test_render_with_default_attributes
    output = render PhlexUI::Calendar::Days.new

    refute_empty(output)
  end
end
