# frozen_string_literal: true

module PhlexUI
    class Sheet::Header < Base
        def template(&block)
            div(**attrs, &block)
        end

        private

        def default_attrs
            {
                class: "flex flex-col space-y-1.5 text-center sm:text-left",
            }
        end
    end
end