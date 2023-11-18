# frozen_string_literal: true

module PhlexUI
    class Typography::P < Base
        def template(&)
            p(**attrs, &)
        end

        private

        def default_attrs
            {
                class: "leading-7 [&:not(:first-child)]:mt-6"
            }
        end
    end
end