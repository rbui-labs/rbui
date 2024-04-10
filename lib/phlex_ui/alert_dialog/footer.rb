# frozen_string_literal: true

module PhlexUI
  class AlertDialog::Footer < Base
    def view_template(&block)
      div(**attrs, &block)
    end

    private

    def default_attrs
      {
        class: "flex flex-col-reverse sm:flex-row sm:justify-end sm:space-x-2"
      }
    end
  end
end
