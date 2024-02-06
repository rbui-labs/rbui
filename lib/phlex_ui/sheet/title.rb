# frozen_string_literal: true

module PhlexUI
    class Sheet::Title < Base
        def template(&block)
            h3(**attrs, &block)
        end

        private

        def default_attrs
            {
                class: "text-lg font-semibold leading-none tracking-tight",
            }
        end
    end
end