# frozen_string_literal: true

module PhlexUI::Components
  class Popover::Trigger < Base
    def template(&block)
      div(**attrs, &block)
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
