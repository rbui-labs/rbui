# frozen_string_literal: true

module PhlexUI
    class Sheet::Description < Base
        def template(&block)
            p(**attrs, &block)
        end

        private

        def default_attrs
            {
                class: "text-sm text-muted-foreground",
            }
        end
    end
end