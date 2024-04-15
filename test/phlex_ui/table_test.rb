# frozen_string_literal: true

require "test_helper"

class PhlexUI::TableTest < Minitest::Test
  include Phlex::Testing::ViewHelper

  def test_render_with_default_attributes
    output = render PhlexUI::Table.new

    refute_empty(output)
  end
end
