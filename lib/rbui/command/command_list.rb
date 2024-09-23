# frozen_string_literal: true

module RBUI
  class CommandList < Base
    def view_template(&)
      div(**attrs, &)
    end

    private

    def default_attrs
      {
        class: "max-h-80 overflow-scroll divide-y divide-border"
      }
    end
  end
end
