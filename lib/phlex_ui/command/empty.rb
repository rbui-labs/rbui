# frozen_string_literal: true

module PhlexUI
    class Command::Empty < Base
        def template(&block)
            div(**attrs, &block)
        end

        private

        def default_attrs
            {
                class: "py-6 text-center text-sm",
                role: "presentation",
                data: { command_target: "empty" },
            }
        end
    end
end