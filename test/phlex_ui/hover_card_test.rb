# frozen_string_literal: true

require "test_helper"

class PhlexUI::HoverCardTest < Minitest::Test
  include Phlex::Testing::ViewHelper

  def test_render_with_all_items
    output = phlex_context do
      PhlexUI.HoverCard do
        PhlexUI.HoverCardTrigger do
          RBUI.Button(variant: :link) { "@joeldrapper" }
        end
        PhlexUI.HoverCardContent do |card_content|
          card_content.div(class: "flex justify-between space-x-4") do
            PhlexUI.Avatar do
              PhlexUI.AvatarImage(src: "https://avatars.githubusercontent.com/u/246692?v=4", alt: "joeldrapper")
              PhlexUI.AvatarFallback { "JD" }
            end
          end
        end
      end
    end

    assert_match(/joeldrapper/, output)
  end
end
