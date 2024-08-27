# frozen_string_literal: true

require "test_helper"

class PhlexUI::DialogTest < Minitest::Test
  include Phlex::Testing::ViewHelper

  def test_render_with_all_items
    output = phlex_context do
      PhlexUI.Dialog do
        PhlexUI.DialogTrigger do
          RBUI.Button { "Open Dialog" }
        end
        PhlexUI.DialogContent do
          PhlexUI.DialogHeader do
            PhlexUI.DialogTitle { "PhlexUI to the rescue" }
            PhlexUI.DialogDescription { "PhlexUI helps you build accessible standard compliant web apps with ease" }
          end
          PhlexUI.DialogMiddle do
            RBUI.AspectRatio(aspect_ratio: "16/9", class: "rounded-md overflow-hidden border") do |aspect|
              aspect.img(
                alt: "Placeholder",
                loading: "lazy",
                src: "https://avatars.githubusercontent.com/u/246692?v=4"
              )
            end
          end
          PhlexUI.DialogFooter do
            RBUI.Button(variant: :outline, data: {action: "click->dismissable#dismiss"}) { "Cancel" }
            RBUI.Button { "Save" }
          end
        end
      end
    end

    assert_match(/Open Dialog/, output)
  end
end
