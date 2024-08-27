# frozen_string_literal: true

require "test_helper"

class RBUI::ThemeToggleTest < Minitest::Test
  include Phlex::Testing::ViewHelper

  def test_render_with_all_items
    output = phlex_context do
      RBUI.ThemeToggle do |toggle|
        toggle.light_mode do
          RBUI.Button(variant: :primary) { "Light" }
        end

        toggle.dark_mode do
          RBUI.Button(variant: :primary) { "Dark" }
        end
      end
    end

    assert_match(/Dark/, output)
  end
end
