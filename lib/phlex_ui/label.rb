# frozen_string_literal: true

module PhlexUI
    class Label < Base
        def template(&)
            label(**attrs, &)
        end

        private

        def default_attrs
            {
                class: "text-sm font-medium leading-none peer-disabled:cursor-not-allowed peer-disabled:opacity-70"
            }
        end
    end
end