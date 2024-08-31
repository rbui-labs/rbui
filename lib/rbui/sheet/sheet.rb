# frozen_string_literal: true

module RBUI
  class Sheet < Base
    def view_template(&)
      div(**attrs, &)
    end

    private

    def default_attrs
      {
        data: {controller: "rbui--sheet"}
      }
    end
  end
end
