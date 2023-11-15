# frozen_string_literal: true

module PhlexUI
    class Dialog::Trigger < Base
        def template(&)
            div(**attrs, &)
        end

        private

        def default_attrs
            {
                data: { 
                    action: "click->dialog#open"
                }
            }
        end
    end
end