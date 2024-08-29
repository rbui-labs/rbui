# frozen_string_literal: true

require "test_helper"

class RBUI::SheetTest < Minitest::Test
  include Phlex::Testing::ViewHelper

  def test_render_with_all_items
    output = phlex_context do
      RBUI.Sheet do
        RBUI.SheetTrigger do
          RBUI.Button(variant: :outline) { "Open Sheet" }
        end

        RBUI.SheetContent(class: "sm:max-w-sm") do
          RBUI.SheetHeader do
            RBUI.SheetTitle { "Edit profile" }
            RBUI.SheetDescription { "Make changes to your profile here. Click save when you're done." }
          end
          RBUI.SheetMiddle do
            RBUI.Input(placeholder: "Joel Drapper") { "Joel Drapper" }
            RBUI.Input(placeholder: "joel@drapper.me")

            RBUI.SheetFooter do
              RBUI.Button(variant: :outline, data: {action: "click->rbui--sheet-content#close"}) { "Cancel" }
              RBUI.Button(type: "submit") { "Save" }
            end
          end
        end
      end
    end

    assert_match(/Open Sheet/, output)
  end
end
