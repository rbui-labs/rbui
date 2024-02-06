# frozen_string_literal: true

module PhlexUI
    class Command::Item < Base
        def initialize(value:, text: "", href: "#", **attrs)
            @value = value
            @text = text
            @href = href
            super(**attrs)
        end

        def template(&block)
            a(**attrs, &block)
        end

        private

        def default_attrs
            {
                class: "relative flex cursor-pointer select-none items-center gap-x-2 rounded-sm px-2 py-1.5 text-sm outline-none hover:bg-accent hover:text-accent-foreground aria-selected:bg-accent aria-selected:text-accent-foreground data-[disabled]:pointer-events-none data-[disabled]:opacity-50",
                href: @href,
                role: "option",
                data: {
                    command_target: "item",
                    value: @value, text: @text
                },
                # aria_selected: "true", # Toggles aria-selected="true" on keydown
            }
        end
    end
end