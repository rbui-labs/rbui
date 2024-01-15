# frozen_string_literal: true

module PhlexUI::Components
  class AlertDialog::Footer < Base
    def template(&block)
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
