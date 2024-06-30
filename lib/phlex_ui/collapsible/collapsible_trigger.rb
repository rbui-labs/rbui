# frozen_string_literal: true

module PhlexUI
  class CollapsibleTrigger < Base
    def view_template(&)
      div(**attrs, &)
    end

    private

    def default_attrs
      {
        data: {
          action: "click->collapsible#toggle"
        }
      }
    end
  end
end
