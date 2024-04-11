# frozen_string_literal: true

require "test_helper"

class PhlexUI::Table::HeaderTest < Minitest::Test
  include Phlex::Testing::ViewHelper

  def test_render_with_default_attributes
    output = render PhlexUI::Table::Header.new

    refute_empty(output)
  end
end
