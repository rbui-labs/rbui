# frozen_string_literal: true

require "test_helper"

class RBUI::CardTest < Minitest::Test
  include Phlex::Testing::ViewHelper

  def test_render_with_all_items
    output = phlex_context do
      RBUI.Card(class: "w-96") do
        RBUI.CardHeader do
          RBUI.CardTitle { 'You might like "RBUI"' }
          RBUI.CardDescription { "@joeldrapper" }
        end
        RBUI.CardContent do
          RBUI.AspectRatio(aspect_ratio: "16/9", class: "rounded-md overflow-hidden border") do |aspect_ratio|
            aspect_ratio.img(
              alt: "Placeholder",
              loading: "lazy",
              src: "https://avatars.githubusercontent.com/u/246692?v=4"
            )
          end
        end
        RBUI.CardFooter(class: "flex justify-end gap-x-2") do
          RBUI.Button(variant: :outline) { "See more" }
          RBUI.Button(variant: :primary) { "Buy now" }
        end
      end
    end

    assert_match(/You might like/, output)
  end
end
