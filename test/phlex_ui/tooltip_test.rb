# frozen_string_literal: true

require "test_helper"

class PhlexUI::TooltipTest < Minitest::Test
  include Phlex::Testing::ViewHelper

  def test_render_with_all_items
    output = phlex_context do
      PhlexUI.Tooltip do
        PhlexUI.TooltipTrigger do
          PhlexUI.Button(variant: :outline, icon: true) { "?" }
        end
        PhlexUI.TooltipContent do
          PhlexUI.TypographyP { "Add to library" }
        end
      end
    end

    assert_match(/Add to library/, output)
  end
end
