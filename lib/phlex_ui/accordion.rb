# frozen_string_literal: true

module PhlexUI
    class Accordion < Base
        def template(&)
            div(**attrs, &)
        end

        private

        def default_attrs
            {
                class: 'w-full'
            }
        end
    end
end
