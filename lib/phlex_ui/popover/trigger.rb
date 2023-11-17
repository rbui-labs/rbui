# frozen_string_literal: true

module PhlexUI
    class Popover::Trigger < Base
        def template(&)
            div(**attrs, &)
        end

        private

        def default_attrs
            {
                data: {
                    popover_target: 'trigger'
                }
            }
        end
    end
end