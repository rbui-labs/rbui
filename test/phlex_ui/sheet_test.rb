# frozen_string_literal: true

require "test_helper"

class PhlexUI::SheetTest < Minitest::Test
  include Phlex::Testing::ViewHelper

  def test_render_with_all_items
    output = phlex_context do
      PhlexUI.Sheet do
        PhlexUI.SheetTrigger do
          PhlexUI.Button(variant: :outline) { "Open Sheet" }
        end
        PhlexUI.SheetContent(class: "sm:max-w-sm") do
          PhlexUI.SheetHeader do
            PhlexUI.SheetTitle { "Edit profile" }
            PhlexUI.SheetDescription { "Make changes to your profile here. Click save when you're done." }
          end
          PhlexUI.SheetMiddle do
            RBUI.Input(placeholder: "Joel Drapper") { "Joel Drapper" }
            RBUI.Input(placeholder: "joel@drapper.me")

            PhlexUI.SheetFooter do
              PhlexUI.Button(variant: :outline, data: {action: "click->dismissable#dismiss"}) { "Cancel" }
              PhlexUI.Button(type: "submit") { "Save" }
            end
          end
        end
      end
    end

    assert_match(/Open Sheet/, output)
  end
end
