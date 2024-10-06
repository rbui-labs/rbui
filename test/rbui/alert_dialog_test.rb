# frozen_string_literal: true

require "test_helper"

class RBUI::AlertDialogTest < Minitest::Test
  def test_render_with_all_items
    output = phlex_context do
      RBUI.AlertDialog do
        RBUI.AlertDialogTrigger do
          RBUI.Button { "Show dialog" }
        end
        RBUI.AlertDialogContent do
          RBUI.AlertDialogHeader do
            RBUI.AlertDialogTitle { "Are you absolutely sure?" }
            RBUI.AlertDialogDescription { "This action cannot be undone. This will permanently delete your account and remove your data from our servers." }
          end
          RBUI.AlertDialogFooter do
            RBUI.AlertDialogCancel { "Cancel" }
            RBUI.AlertDialogAction { "Continue" }
          end
        end
      end
    end

    assert_match(/Show dialog/, output)
  end
end
