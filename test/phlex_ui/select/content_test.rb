# frozen_string_literal: true

require "test_helper"

class PhlexUI::Select::ContentTest < Minitest::Test
  include Phlex::Testing::ViewHelper

  def test_render_with_default_attributes
    output = render PhlexUI::Select::Content.new(outlet_id: "test")

    refute_empty(output)
  end
end
