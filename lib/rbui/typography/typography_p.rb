# frozen_string_literal: true

module RBUI
  class TypographyP < Base
    def view_template(&)
      p(**attrs, &)
    end
  end
end
