# frozen_string_literal: true

module PhlexUI
    class Command::List < Base
        def template(&block)
            div(**attrs, &block)
        end

        private

        def default_attrs
            {
                class: "divide-y divide-border",
            }
        end
    end
end