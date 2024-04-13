# frozen_string_literal: true

module PhlexUI
  class HoverCard::Trigger < Base
    def template(&)
      div(**attrs, &)
    end

    private

    def default_attrs
      {
        data: {
          popover_target: "trigger"
        },
        class: "inline-block"
      }
    end
  end
end
