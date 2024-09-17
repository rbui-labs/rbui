# frozen_string_literal: true

module RBUI
  class TypographyP < Base
    def view_template(&)
      p(**attrs, &)
    end

    private

    def default_attrs
      {
        class: "leading-7"
      }
    end
  end
end
