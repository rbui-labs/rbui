# frozen_string_literal: true

module PhlexUI
  class CollapsibleContent < Base
    def view_template(&)
      div(**attrs, &)
    end

    private

    def default_attrs
      {
        data: {collapsible_target: "content"},
        class: "overflow-y-hidden"
      }
    end
  end
end
