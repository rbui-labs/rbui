# frozen_string_literal: true

require "test_helper"

class RBUI::DialogTest < Minitest::Test
  include Phlex::Testing::ViewHelper

  def test_render_with_all_items
    output = phlex_context do
      RBUI.Dialog do
        RBUI.DialogTrigger do
          RBUI.Button { "Open Dialog" }
        end
        RBUI.DialogContent do
          RBUI.DialogHeader do
            RBUI.DialogTitle { "RBUI to the rescue" }
            RBUI.DialogDescription { "RBUI helps you build accessible standard compliant web apps with ease" }
          end
          RBUI.DialogMiddle do
            RBUI.AspectRatio(aspect_ratio: "16/9", class: "rounded-md overflow-hidden border") do |aspect|
              aspect.img(
                alt: "Placeholder",
                loading: "lazy",
                src: "https://avatars.githubusercontent.com/u/246692?v=4"
              )
            end
          end
          RBUI.DialogFooter do
            RBUI.Button(variant: :outline, data: {action: "click->rbui--dialog#dismiss"}) { "Cancel" }
            RBUI.Button { "Save" }
          end
        end
      end
    end

    assert_match(/Open Dialog/, output)
  end
end
