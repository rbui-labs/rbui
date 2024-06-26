# frozen_string_literal: true

require "test_helper"

class PhlexUI::PopoverTest < Minitest::Test
  include Phlex::Testing::ViewHelper

  def test_render_with_all_items
    output = phlex_context do
      PhlexUI.Popover do
        PhlexUI.PopoverTrigger(class: "w-full") do
          PhlexUI.Button(variant: :outline) { "Open Popover" }
        end
        PhlexUI.PopoverContent(class: "w-40") do
          PhlexUI.Link(href: "#", variant: :ghost, class: "block w-full justify-start pl-2") do |link|
            link.plain "Profile"
          end
          PhlexUI.Link(href: "#", variant: :ghost, class: "block w-full justify-start pl-2") do |link|
            link.plain "Settings"
          end
          PhlexUI.Link(href: "#", variant: :ghost, class: "block w-full justify-start pl-2") do |link|
            link.plain "Logout"
          end
        end
      end
    end

    assert_match(/Profile/, output)
  end
end
