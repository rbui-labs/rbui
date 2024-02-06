# frozen_string_literal: true

module PhlexUI
    class Sheet::Middle < Base
        def template(&block)
            div(**attrs, &block)
        end

        private

        def default_attrs
            {
                class: "py-4",
            }
        end
    end
end