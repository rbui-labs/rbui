# frozen_string_literal: true

require "test_helper"

class RBUI::TabsTest < Minitest::Test
  include Phlex::Testing::ViewHelper

  def test_render_with_all_items
    output = phlex_context do
      RBUI.Tabs(default_value: "account", class: "w-96") do
        RBUI.TabsList do
          RBUI.TabsTrigger(value: "account") { "Account" }
          RBUI.TabsTrigger(value: "password") { "Password" }
        end
        RBUI.TabsContent(value: "account") do
          RBUI.TypographyLarge { "Account" }
          RBUI::Text(size: "5", weight: "semibold") { "Are you sure absolutely sure?" }
          RBUI.TypographyMuted { "Update your account details." }
        end
        RBUI.TabsContent(value: "password") do
          RBUI.TypographyLarge { "Password" }
          RBUI.TypographyMuted { "Change your password here. After saving, you'll be logged out." }
        end
      end
    end

    assert_match(/Account/, output)
  end
end
