# frozen_string_literal: true

module RBUI
  class AlertDialogCancel < Base
    def view_template(&)
      render RBUI::Button.new(**attrs, &)
    end

    private

    def default_attrs
      {
        variant: :outline,
        data: {
          action: "click->rbui--alert-dialog#dismiss"
        },
        class: "mt-2 sm:mt-0"
      }
    end
  end
end
