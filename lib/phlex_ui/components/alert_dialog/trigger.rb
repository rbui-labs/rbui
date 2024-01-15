# frozen_string_literal: true

module PhlexUI::Components
  class AlertDialog::Trigger < Base
    def template(&block)
      div(**attrs, &block)
    end

    private

    def default_attrs
      {
        data: {action: "click->alert-dialog#open"},
        class: "inline-block"
      }
    end
  end
end
