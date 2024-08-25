# frozen_string_literal: true

require "test_helper"

class PhlexUI::CollapsibleTest < Minitest::Test
  include Phlex::Testing::ViewHelper

  def test_render_with_all_items
    output = phlex_context do
      PhlexUI.Collapsible(open: true) do
        PhlexUI.CollapsibleTrigger do
          RBUI.Button(variant: :ghost, icon: true) do |button|
            button.span(class: "sr-only") { "Toggle" }
          end
        end

        PhlexUI.CollapsibleContent do |content|
          content.div(class: "rounded-md border px-4 py-2 font-mono text-sm shadow-sm") do
            "phlex-ruby/phlex-rails"
          end
          content.div(class: "rounded-md border px-4 py-2 font-mono text-sm shadow-sm") do
            "PhlexUI/phlex_ui"
          end
        end
      end
    end

    assert_match(/Toggle/, output)
  end
end
