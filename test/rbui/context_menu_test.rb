# frozen_string_literal: true

require "test_helper"

class RBUI::ContextMenuTest < Minitest::Test
  include Phlex::Testing::ViewHelper

  def test_render_with_all_items
    output = phlex_context do
      RBUI.ContextMenu do
        RBUI.ContextMenuTrigger(class: "flex h-[150px] w-[300px] items-center justify-center rounded-md border border-dashed text-sm") { "Right click here" }
        RBUI.ContextMenuContent(class: "w-64") do
          RBUI.ContextMenuItem(href: "#", shortcut: "⌘[") { "Back" }
          RBUI.ContextMenuItem(href: "#", shortcut: "⌘]", disabled: true) { "Forward" }
          RBUI.ContextMenuItem(href: "#", shortcut: "⌘R") { "Reload" }
          RBUI.ContextMenuSeparator
          RBUI.ContextMenuItem(href: "#", shortcut: "⌘⇧B", checked: true) { "Show Bookmarks Bar" }
          RBUI.ContextMenuItem(href: "#") { "Show Full URLs" }
          RBUI.ContextMenuSeparator
          RBUI.ContextMenuLabel(inset: true) { "More Tools" }
          RBUI.ContextMenuSeparator
          RBUI.ContextMenuItem(href: "#") { "Developer Tools" }
          RBUI.ContextMenuItem(href: "#") { "Task Manager" }
          RBUI.ContextMenuItem(href: "#") { "Extensions" }
        end
      end
    end

    assert_match(/Right click here/, output)
  end
end
