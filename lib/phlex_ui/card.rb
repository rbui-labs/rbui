# frozen_string_literal: true

module PhlexUI
    class Card < Base
        def template(&)
            div(**attrs, &)
        end

        private

        def default_attrs
            {
                class: "rounded-xl border bg-background shadow"
            }
        end
    end
end