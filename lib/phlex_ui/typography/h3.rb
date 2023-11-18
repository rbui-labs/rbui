# frozen_string_literal: true

module PhlexUI
    class Typography::H3 < Base
        def template(&)
            h3(**attrs, &)
        end

        private

        def default_attrs
            {
                class: "scroll-m-20 text-2xl font-semibold tracking-tight"
            }
        end
    end
end