# frozen_string_literal: true

module PhlexUI
  class Combobox < Base
    def view_template(&)
      div(**attrs, &)
    end

    private

    def default_attrs
      {data: {controller: "phlexui--combobox", action: "click@window->phlexui--combobox#clickOutside", phlexui__combobox_closed_value: "true"}}
    end
  end
end
