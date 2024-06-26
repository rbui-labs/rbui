# frozen_string_literal: true

require "test_helper"

class PhlexUI::AvatarTest < Minitest::Test
  include Phlex::Testing::ViewHelper

  def test_render_with_all_items
    output = phlex_context do
      PhlexUI.Avatar do
        PhlexUI.AvatarImage(src: "https://avatars.githubusercontent.com/u/246692?v=4", alt: "joeldrapper")
        PhlexUI.AvatarFallback { "JD" }
      end
    end

    assert_match(/joeldrapper/, output)
  end
end
