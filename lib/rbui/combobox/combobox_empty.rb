# frozen_string_literal: true

module RBUI
  class ComboboxEmpty < Base
    def view_template(&)
      div(**attrs, &)
    end

    private

    def default_attrs
      {class: "hidden py-6 text-center text-sm", role: "presentation", data: {rbui__combobox_content_target: "empty"}}
    end
  end
end
