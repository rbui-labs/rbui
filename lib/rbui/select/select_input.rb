# frozen_string_literal: true

module RBUI
  class SelectInput < Base
    def view_template
      input(**attrs)
    end

    private

    def default_attrs
      {
        class: "hidden",
        data: {
          rbui__select_target: "input"
        }
      }
    end
  end
end
