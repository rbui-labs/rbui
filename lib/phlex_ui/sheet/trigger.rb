# frozen_string_literal: true

module PhlexUI
    class Sheet::Trigger < Base
        def template(&block)
            div(**attrs, &block)
        end

        private

        def default_attrs
            {
                data: { action: "click->sheet#open" }
            }
        end
    end
end