# frozen_string_literal: true

module PhlexUI
    class Select::Item < Base
        def initialize(value: nil, **attrs)
          @value = value
          super(**attrs)
        end

        def template(&)
          div(**attrs, &)
        end

        private

        def default_attrs
            {
                role: "menuitem",
                class: "relative flex cursor-pointer select-none items-center rounded-sm px-2 py-1.5 text-sm outline-none transition-colors hover:bg-accent hover:text-accent-foreground focus:bg-accent focus:text-accent-foreground aria-selected:bg-accent aria-selected:text-accent-foreground data-[disabled]:pointer-events-none data-[disabled]:opacity-50",
                data_action: "click->popover#close click->select#selectItem",
                data_popover_target: "menuItem",
                data_value: @value,
                data_orientation: "vertical",
                tabindex: "-1",
            }
        end
    end
end