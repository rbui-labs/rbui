# frozen_string_literal: true

require "test_helper"

class PhlexUI::CodeblockTest < Minitest::Test
  include Phlex::Testing::ViewHelper

  def test_render_with_default_attributes
    output = render PhlexUI::Codeblock.new("p", syntax: :ruby)

    refute_empty(output)
  end
end
