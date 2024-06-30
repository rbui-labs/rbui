# frozen_string_literal: true

require "test_helper"

class PhlexUI::ThemeToggleTest < Minitest::Test
  include Phlex::Testing::ViewHelper

  def test_render_with_all_items
    output = phlex_context do
      PhlexUI.ThemeToggle do |toggle|
        toggle.light_mode do
          PhlexUI.Button(variant: :primary) { "Light" }
        end

        toggle.dark_mode do
          PhlexUI.Button(variant: :primary) { "Dark" }
        end
      end
    end

    assert_match(/Dark/, output)
  end
end
