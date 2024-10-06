# frozen_string_literal: true

require "test_helper"

class RBUI::AvatarTest < Minitest::Test
  def test_render_with_all_items
    output = phlex_context do
      RBUI.Avatar do
        RBUI.AvatarImage(src: "https://avatars.githubusercontent.com/u/246692?v=4", alt: "joeldrapper")
        RBUI.AvatarFallback { "JD" }
      end
    end

    assert_match(/joeldrapper/, output)
  end
end
