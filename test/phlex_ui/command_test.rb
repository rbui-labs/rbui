# frozen_string_literal: true

require "test_helper"

class PhlexUI::CommandTest < Minitest::Test
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
      PhlexUI.CommandDialog do
        PhlexUI.CommandDialogTrigger do
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
        PhlexUI.CommandDialogContent do
          PhlexUI.Command do
            PhlexUI.CommandInput(placeholder: "Type a command or search...")
            PhlexUI.CommandEmpty { "No results found." }
            PhlexUI.CommandList do
              PhlexUI.CommandGroup(title: "Components") do
                components_list.each do |component|
                  PhlexUI.CommandItem(value: component[:name], href: component[:path]) do |item|
                    item.plain component[:name]
                  end
                end
              end
              PhlexUI.CommandGroup(title: "Settings") do
                settings_list.each do |setting|
                  PhlexUI.CommandItem(value: setting[:name], href: setting[:path]) do |item|
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
