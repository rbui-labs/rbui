# frozen_string_literal: true

module PhlexUI
  class SheetTrigger < Base
    def view_template(&)
      div(**attrs, &)
    end

    private

    def default_attrs
      {
        data: {action: "click->sheet#open"}
      }
    end
  end
end
