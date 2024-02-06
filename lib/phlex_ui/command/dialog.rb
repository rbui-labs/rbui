# frozen_string_literal: true

module PhlexUI
    class Command::Dialog < Base
        def template(&block)
            div(**attrs, &block)
        end

        private

        def default_attrs
            {
                data: { controller: "dialog" }
            }
        end
    end
end