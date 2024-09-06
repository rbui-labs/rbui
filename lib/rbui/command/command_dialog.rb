# frozen_string_literal: true

module RBUI
  class CommandDialog < Base
    def view_template(&)
      div(**attrs, &)
    end

    private

    def default_attrs
      {
        data: {controller: "rbui--dialog"}
      }
    end
  end
end
