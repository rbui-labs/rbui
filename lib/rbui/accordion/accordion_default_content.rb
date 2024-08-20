# frozen_string_literal: true

module RBUI
  class AccordionDefaultContent < Base
    def view_template(&)
      div(**attrs, &)
    end

    private

    def default_attrs
      {
        class: "pb-4 pt-0 text-sm"
      }
    end
  end
end
