# frozen_string_literal: true

module RBUI
  class Combobox < Base
    def view_template(&)
      div(**attrs, &)
    end

    private

    def default_attrs
      {data: {controller: "rbui--combobox", action: "click@window->rbui--combobox#clickOutside", rbui__combobox_closed_value: "true"}}
    end
  end
end
