# frozen_string_literal: true

module RBUI
  class DialogTitle < Base
    def view_template(&)
      h3(**attrs, &)
    end

    private

    def default_attrs
      {
        class: "text-lg font-semibold leading-none tracking-tight"
      }
    end
  end
end
