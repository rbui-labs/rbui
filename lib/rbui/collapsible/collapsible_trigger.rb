# frozen_string_literal: true

module RBUI
  class CollapsibleTrigger < Base
    def view_template(&)
      div(**attrs, &)
    end

    private

    def default_attrs
      {
        data: {
          action: "click->rbui--collapsible#toggle"
        }
      }
    end
  end
end
