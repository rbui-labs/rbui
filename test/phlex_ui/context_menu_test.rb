# frozen_string_literal: true

require "test_helper"

class PhlexUI::ContextMenuTest < Minitest::Test
  include Phlex::Testing::ViewHelper

  def test_render_with_all_items
    output = phlex_context do
      PhlexUI.ContextMenu do
        PhlexUI.ContextMenuTrigger(class: "flex h-[150px] w-[300px] items-center justify-center rounded-md border border-dashed text-sm") { "Right click here" }
        PhlexUI.ContextMenuContent(class: "w-64") do
          PhlexUI.ContextMenuItem(href: "#", shortcut: "⌘[") { "Back" }
          PhlexUI.ContextMenuItem(href: "#", shortcut: "⌘]", disabled: true) { "Forward" }
          PhlexUI.ContextMenuItem(href: "#", shortcut: "⌘R") { "Reload" }
          PhlexUI.ContextMenuSeparator
          PhlexUI.ContextMenuItem(href: "#", shortcut: "⌘⇧B", checked: true) { "Show Bookmarks Bar" }
          PhlexUI.ContextMenuItem(href: "#") { "Show Full URLs" }
          PhlexUI.ContextMenuSeparator
          PhlexUI.ContextMenuLabel(inset: true) { "More Tools" }
          PhlexUI.ContextMenuSeparator
          PhlexUI.ContextMenuItem(href: "#") { "Developer Tools" }
          PhlexUI.ContextMenuItem(href: "#") { "Task Manager" }
          PhlexUI.ContextMenuItem(href: "#") { "Extensions" }
        end
      end
    end

    assert_match(/Right click here/, output)
  end
end
