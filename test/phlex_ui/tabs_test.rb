# frozen_string_literal: true

require "test_helper"

class PhlexUI::TabsTest < Minitest::Test
  include Phlex::Testing::ViewHelper

  def test_render_with_all_items
    output = phlex_context do
      PhlexUI.Tabs(default_value: "account", class: "w-96") do
        PhlexUI.TabsList do
          PhlexUI.TabsTrigger(value: "account") { "Account" }
          PhlexUI.TabsTrigger(value: "password") { "Password" }
        end
        PhlexUI.TabsContent(value: "account") do
          RBUI.TypographyLarge { "Account" }
          RBUI.TypographyMuted { "Update your account details." }
        end
        PhlexUI.TabsContent(value: "password") do
          RBUI.TypographyLarge { "Password" }
          RBUI.TypographyMuted { "Change your password here. After saving, you'll be logged out." }
        end
      end
    end

    assert_match(/Account/, output)
  end
end
