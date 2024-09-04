# frozen_string_literal: true

module RBUI
  class DialogMiddle < Base
    def view_template(&)
      div(**attrs, &)
    end

    private

    def default_attrs
      {
        class: "py-4"
      }
    end
  end
end
