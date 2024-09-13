# frozen_string_literal: true

require "test_helper"

class RBUI::CommandTest < Minitest::Test
  include Phlex::Testing::ViewHelper

  def test_render_with_all_items
    components_list = [
      {name: "Accordion", path: "#"},
      {name: "Alert", path: "#"},
      {name: "Alert Dialog", path: "#"},
      {name: "Aspect Ratio", path: "#"},
      {name: "Avatar", path: "#"},
      {name: "Badge", path: "#"}
    ]

    settings_list = [
      {name: "Profile", path: "#"},
      {name: "Mail", path: "#"},
      {name: "Settings", path: "#"}
    ]

    output = phlex_context do
      RBUI.CommandDialog do
        RBUI.CommandDialogTrigger do
          RBUI.Button(variant: "outline", class: "w-56 pr-2 pl-3 justify-between") do |button|
            button.div(class: "flex items-center space-x-1") do |div|
              div.span(class: "text-muted-foreground font-normal") do |span|
                span.plain "Search"
              end
            end
            RBUI.ShortcutKey do |shortcut_key|
              shortcut_key.span(class: "text-xs") { "⌘" }
              shortcut_key.plain "K"
            end
          end
        end
        RBUI.CommandDialogContent do
          RBUI.Command do
            RBUI.CommandInput(placeholder: "Type a command or search...")
            RBUI.CommandEmpty { "No results found." }
            RBUI.CommandList do
              RBUI.CommandGroup(title: "Components") do
                components_list.each do |component|
                  RBUI.CommandItem(value: component[:name], href: component[:path]) do |item|
                    item.plain component[:name]
                  end
                end
              end
              RBUI.CommandGroup(title: "Settings") do
                settings_list.each do |setting|
                  RBUI.CommandItem(value: setting[:name], href: setting[:path]) do |item|
                    item.plain setting[:name]
                  end
                end
              end
            end
          end
        end
      end
    end

    assert_match(/Search/, output)
  end
end
