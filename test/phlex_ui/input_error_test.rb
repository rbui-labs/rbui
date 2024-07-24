# frozen_string_literal: true

require "test_helper"

class PhlexUI::InputErrorTest < Minitest::Test
  include Phlex::Testing::ViewHelper

  def test_render_with_all_items
    output = phlex_context do
      PhlexUI.InputError { "you should use phlex" }
    end

    assert_match(/you should use phlex/, output)
  end
end
