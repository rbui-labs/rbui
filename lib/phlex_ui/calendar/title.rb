# frozen_string_literal: true

module PhlexUI
    class Calendar::Title < Base
        def initialize(default: "Month Year", **attrs)
            @default = default
            super(**attrs)
        end

        def template
            div(**attrs) { @default }
        end

        private

        def default_attrs
            {
                class: "text-sm font-medium",
                aria_live: "polite",
                role: "presentation",
                data: {
                    calendar_target: "title"
                }
            }
        end
    end
end