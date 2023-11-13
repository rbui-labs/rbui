# frozen_string_literal: true

module PhlexUI
    class AlertDialog::Action < Base
        def template(&)
            render PhlexUI::Button.new(**attrs, &)
        end

        private

        def default_attrs
            {
                variant: :primary,
            }
        end
    end
end