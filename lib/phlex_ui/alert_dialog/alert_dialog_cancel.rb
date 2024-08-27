# frozen_string_literal: true

module PhlexUI
  class AlertDialogCancel < Base
    def view_template(&)
      render RBUI::Button.new(**attrs, &)
    end

    private

    def default_attrs
      {
        variant: :outline,
        data: {
          action: "click->dismissable#dismiss"
        },
        class: "mt-2 sm:mt-0"
      }
    end
  end
end
