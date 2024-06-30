# frozen_string_literal: true

require "test_helper"

class PhlexUI::CardTest < Minitest::Test
  include Phlex::Testing::ViewHelper

  def test_render_with_all_items
    output = phlex_context do
      PhlexUI.Card(class: "w-96") do
        PhlexUI.CardHeader do
          PhlexUI.CardTitle { 'You might like "PhlexUI"' }
          PhlexUI.CardDescription { "@joeldrapper" }
        end
        PhlexUI.CardContent do
          PhlexUI.AspectRatio(aspect_ratio: "16/9", class: "rounded-md overflow-hidden border") do |aspect_ratio|
            aspect_ratio.img(
              alt: "Placeholder",
              loading: "lazy",
              src: "https://avatars.githubusercontent.com/u/246692?v=4"
            )
          end
        end
        PhlexUI.CardFooter(class: "flex justify-end gap-x-2") do
          PhlexUI.Button(variant: :outline) { "See more" }
          PhlexUI.Button(variant: :primary) { "Buy now" }
        end
      end
    end

    assert_match(/You might like/, output)
  end
end
