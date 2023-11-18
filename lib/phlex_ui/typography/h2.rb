# frozen_string_literal: true

module PhlexUI
    class Typography::H2 < Base
        def template(&)
            h2(**attrs, &)
        end

        private

        def default_attrs
            {
                class: "scroll-m-20 text-3xl font-semibold tracking-tight transition-colors first:mt-0"
            }
        end
    end
end
