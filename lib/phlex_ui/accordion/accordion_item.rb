# frozen_string_literal: true

module PhlexUI
  class AccordionItem < Base
    def initialize(open: false, rotate_icon: 180, **attrs)
      @open = open
      @rotate_icon = rotate_icon
      super(**attrs)
    end

    def view_template(&)
      div(**attrs, &)
    end

    private

    def default_attrs
      {
        data: {
          controller: "accordion",
          accordion_open_value: @open,
          accordion_rotate_icon_value: @rotate_icon
        },
        class: "border-b"
      }
    end
  end
end
