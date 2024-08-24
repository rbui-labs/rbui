# frozen_string_literal: true

module RBUI
  class Form < Base
    def view_template(&)
      form(**attrs, &)
    end

    private

    def default_attrs
      {}
    end
  end
end
