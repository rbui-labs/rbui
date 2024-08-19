# frozen_string_literal: true

module RBUI
  class ComboboxInput < Base
    def view_template
      input(**attrs)
    end

    private

    def default_attrs
      {
        class: "hidden",
        data: {
          rbui__combobox_target: "input"
        }
      }
    end
  end
end
