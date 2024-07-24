# frozen_string_literal: true

require "test_helper"

class PhlexUI::DropdownMenuTest < Minitest::Test
  include Phlex::Testing::ViewHelper

  def test_render_with_all_items
    output = phlex_context do
      PhlexUI.DropdownMenu do
        PhlexUI.DropdownMenuTrigger(class: "w-full") do
          PhlexUI.Button(variant: :outline) { "Open" }
        end
        PhlexUI.DropdownMenuContent do
          PhlexUI.DropdownMenuLabel { "My Account" }
          PhlexUI.DropdownMenuSeparator
          PhlexUI.DropdownMenuItem(href: "#") { "Profile" }
          PhlexUI.DropdownMenuItem(href: "#") { "Billing" }
          PhlexUI.DropdownMenuItem(href: "#") { "Team" }
          PhlexUI.DropdownMenuItem(href: "#") { "Subscription" }
        end
      end
    end

    assert_match(/Open/, output)
  end
end
