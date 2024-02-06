# frozen_string_literal: true

module PhlexUI
    class Calendar::Body < Base
        def template
            table(**attrs)
        end

        private

        def default_attrs
            {
                data: {
                    calendar_target: "calendar"
                },
            }
        end
    end
end