# frozen_string_literal: true

module RBUI
  class PopoverTrigger < Base
    def view_template(&)
      div(**attrs, &)
    end

    private

    def default_attrs
      {
        data: {
          rbui__popover_target: "trigger",
          action: "mouseover->rbui--popover#handleMouseOver mouseout->rbui--popover#handleMouseOut"
        },
        class: "inline-block"
      }
    end
  end
end
