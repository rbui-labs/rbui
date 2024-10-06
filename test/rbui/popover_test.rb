# frozen_string_literal: true

require "test_helper"

class RBUI::PopoverTest < Minitest::Test
  def test_render_with_all_items
    output = phlex_context do
      RBUI.Popover do
        RBUI.PopoverTrigger(class: "w-full") do
          RBUI.Button(variant: :outline) { "Open Popover" }
        end
        RBUI.PopoverContent(class: "w-40") do
          RBUI.Link(href: "#", variant: :ghost, class: "block w-full justify-start pl-2") do |link|
            link.plain "Profile"
          end
          RBUI.Link(href: "#", variant: :ghost, class: "block w-full justify-start pl-2") do |link|
            link.plain "Settings"
          end
          RBUI.Link(href: "#", variant: :ghost, class: "block w-full justify-start pl-2") do |link|
            link.plain "Logout"
          end
        end
      end
    end

    assert_match(/Profile/, output)
  end
end
