# frozen_string_literal: true

require "test_helper"

class PhlexUI::Dialog::ContentTest < Minitest::Test
  include Phlex::Testing::ViewHelper

  def test_render_with_default_attributes
    output = render PhlexUI::Dialog::Content.new { "test" }

    refute_empty(output)
  end
end
