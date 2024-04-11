# frozen_string_literal: true

require "test_helper"

class PhlexUI::Pagination::ItemTest < Minitest::Test
  include Phlex::Testing::ViewHelper

  def test_render_with_default_attributes
    output = render PhlexUI::Pagination::Item.new

    refute_empty(output)
  end
end
