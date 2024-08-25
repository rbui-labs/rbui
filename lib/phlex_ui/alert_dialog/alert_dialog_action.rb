# frozen_string_literal: true

module PhlexUI
  class AlertDialogAction < Base
    def view_template(&)
      render RBUI::Button.new(**attrs, &)
    end

    private

    def default_attrs
      {
        variant: :primary
      }
    end
  end
end
