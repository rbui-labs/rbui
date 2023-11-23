# frozen_string_literal: true

module PhlexUI
    class Card::Description < Base
        def template(&)
            p(**attrs, &)
        end

        private

        def default_attrs
            {
                class: "text-sm text-muted-foreground"
            }
        end
    end
end