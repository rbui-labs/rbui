# frozen_string_literal: true

require "test_helper"

class RBUI::DropdownMenuTest < Minitest::Test
  def test_render_with_all_items
    output = phlex_context do
      RBUI.DropdownMenu do
        RBUI.DropdownMenuTrigger(class: "w-full") do
          RBUI.Button(variant: :outline) { "Open" }
        end
        RBUI.DropdownMenuContent do
          RBUI.DropdownMenuLabel { "My Account" }
          RBUI.DropdownMenuSeparator
          RBUI.DropdownMenuItem(href: "#") { "Profile" }
          RBUI.DropdownMenuItem(href: "#") { "Billing" }
          RBUI.DropdownMenuItem(href: "#") { "Team" }
          RBUI.DropdownMenuItem(href: "#") { "Subscription" }
        end
      end
    end

    assert_match(/Open/, output)
  end
end
