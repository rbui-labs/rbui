# frozen_string_literal: true

module PhlexUI
  class Popover::Trigger < Base
    def template(&block)
      div(**attrs, &block)
    end

    private

    def default_attrs
      {
        data: {
          ui_popover_target: "trigger"
        },
        class: "inline-block"
      }
    end
  end
end
