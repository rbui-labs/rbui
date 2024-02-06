# frozen_string_literal: true

module PhlexUI
    class Calendar::Header < Base
        def template(&block)
            div(**attrs, &block)
        end

        private

        def default_attrs
            {
                class: "flex justify-center pt-1 relative items-center",
            }
        end
    end
end