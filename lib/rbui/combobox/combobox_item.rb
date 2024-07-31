# frozen_string_literal: true

module RBUI
  class ComboboxItem < Base
    def initialize(value: nil, **attrs)
      @value = value
      super(**attrs)
    end

    def view_template(&block)
      div(**attrs) do
        div(class: "invisible", data: {rbui__combobox_item_target: "check"}) { icon }
        block.call
      end
    end

    private

    def icon
      svg(
        xmlns: "http://www.w3.org/2000/svg",
        viewbox: "0 0 24 24",
        fill: "none",
        stroke: "currentColor",
        class: "mr-2 h-4 w-4",
        stroke_width: "2",
        stroke_linecap: "round",
        stroke_linejoin: "round"
      ) do |s|
        s.path(
          d: "M20 6 9 17l-5-5"
        )
      end
    end

    def default_attrs
      {
        class:
          "relative flex cursor-pointer select-none items-center gap-x-2 rounded-sm px-2 py-1.5 text-sm outline-none hover:bg-accent hover:text-accent-foreground aria-selected:bg-accent aria-selected:text-accent-foreground data-[disabled]:pointer-events-none data-[disabled]:opacity-50",
        data: {
          value: @value,
          selected: false,
          rbui__combobox_content_target: "item",
          controller: "rbui--combobox-item",
          action: "click->rbui--combobox-item#selectItem mouseenter->rbui--combobox-item#mouseenter"
        },
        tabindex: "0",
        role: "option"
      }
    end
  end
end
