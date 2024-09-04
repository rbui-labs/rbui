# frozen_string_literal: true

module RBUI
  class SheetTrigger < Base
    def view_template(&)
      div(**attrs, &)
    end

    private

    def default_attrs
      {
        data: {action: "click->rbui--sheet#open"}
      }
    end
  end
end
