# frozen_string_literal: true

module RBUI
  class ComboboxSeparator < Base
    def view_template(&)
      div(**attrs, &)
    end

    private

    def default_attrs
      {class: "-mx-1 h-px bg-border"}
    end
  end
end
