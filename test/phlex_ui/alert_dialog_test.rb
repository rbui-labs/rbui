# frozen_string_literal: true

require "test_helper"

class PhlexUI::AlertDialogTest < Minitest::Test
  include Phlex::Testing::ViewHelper

  def test_render_with_all_items
    output = phlex_context do
      PhlexUI.AlertDialog do
        PhlexUI.AlertDialogTrigger do
          RBUI.Button { "Show dialog" }
        end
        PhlexUI.AlertDialogContent do
          PhlexUI.AlertDialogHeader do
            PhlexUI.AlertDialogTitle { "Are you absolutely sure?" }
            PhlexUI.AlertDialogDescription { "This action cannot be undone. This will permanently delete your account and remove your data from our servers." }
          end
          PhlexUI.AlertDialogFooter do
            PhlexUI.AlertDialogCancel { "Cancel" }
            PhlexUI.AlertDialogAction { "Continue" }
          end
        end
      end
    end

    assert_match(/Show dialog/, output)
  end
end
