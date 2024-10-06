# frozen_string_literal: true

require "test_helper"

class RBUI::FormTest < Minitest::Test
  def test_render_with_all_items
    output = phlex_context do
      RBUI.Form do
        RBUI.FormField do
          RBUI.FormFieldLabel { "Label" }
          RBUI.Input(placeholder: "Joel Drapper", required: true, minlength: "3") { "Joel Drapper" }
          RBUI.FormFieldHint()
          RBUI.FormFieldError()
        end
      end
    end

    assert_match(/Joel/, output)
  end
end
