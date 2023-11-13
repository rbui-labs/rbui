# frozen_string_literal: true

module PhlexUI
    class AlertDialog::Trigger < Base
        def template(&)
            div(**attrs, &)
        end

        private

        def default_attrs
            {
                data: { action: "click->alert-dialog#open" },
                class: 'inline-block'
            }
        end
    end
end