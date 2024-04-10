# frozen_string_literal: true

module PhlexUI
  class Select::Item < Base
    def initialize(value: nil, **attrs)
      @value = value
      super(**attrs)
    end

    def view_template(&block)
      div(**attrs) do
        block&.call
        selected_icon
      end
    end

    private

    def selected_icon
      svg(
        xmlns: "http://www.w3.org/2000/svg",
        viewbox: "0 0 20 20",
        fill: "currentColor",
        class: "w-4 h-4 absolute right-2 top-1/2 transform -translate-y-1/2 hidden group-data-[selected=true]/selectitem:block"
      ) do |s|
        s.path(
          fill_rule: "evenodd",
          d:
            "M16.704 4.153a.75.75 0 0 1 .143 1.052l-8 10.5a.75.75 0 0 1-1.127.075l-4.5-4.5a.75.75 0 0 1 1.06-1.06l3.894 3.893 7.48-9.817a.75.75 0 0 1 1.05-.143Z",
          clip_rule: "evenodd"
        )
      end
    end

    def default_attrs
      {
        role: "menuitem",
        class: "group/selectitem relative flex cursor-pointer select-none items-center rounded-sm px-2 py-1.5 text-sm outline-none transition-colors hover:bg-accent hover:text-accent-foreground focus:bg-accent focus:text-accent-foreground aria-selected:bg-accent aria-selected:text-accent-foreground data-[disabled]:pointer-events-none data-[disabled]:opacity-50",
        data_action: "click->popover#close click->select#selectItem",
        data_popover_target: "menuItem",
        data_select_target: "item",
        data_value: @value,
        data_orientation: "vertical",
        tabindex: "-1"
      }
    end
  end
end
