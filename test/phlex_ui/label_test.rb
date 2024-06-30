# frozen_string_literal: true

require "test_helper"

class PhlexUI::LabelTest < Minitest::Test
  include Phlex::Testing::ViewHelper

  def test_render_with_all_items
    output = phlex_context do
      PhlexUI.Label(for: "username") { "Username" }
    end

    assert_match(/Username/, output)
  end
end
