# frozen_string_literal: true

require "test_helper"

class RBUI::HoverCardTest < Minitest::Test
  include Phlex::Testing::ViewHelper

  def test_render_with_all_items
    output = phlex_context do
      RBUI.HoverCard do
        RBUI.HoverCardTrigger do
          RBUI.Button(variant: :link) { "@joeldrapper" }
        end
        RBUI.HoverCardContent do |card_content|
          card_content.div(class: "flex justify-between space-x-4") do
            RBUI.Avatar do
              RBUI.AvatarImage(src: "https://avatars.githubusercontent.com/u/246692?v=4", alt: "joeldrapper")
              RBUI.AvatarFallback { "JD" }
            end
          end
        end
      end
    end

    assert_match(/joeldrapper/, output)
  end
end
