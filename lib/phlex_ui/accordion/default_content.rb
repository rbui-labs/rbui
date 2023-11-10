# frozen_string_literal: true

module PhlexUI
    class Accordion::DefaultContent < Base
        def template(&)
            div(**attrs, &)
        end

        private

        def default_attrs
            {
                class: 'pb-4 pt-0 text-sm'
            }
        end
    end
end