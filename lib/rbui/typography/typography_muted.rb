# frozen_string_literal: true

module RBUI
  class TypographyMuted < Base
    def view_template(&)
      p(**attrs, &)
    end

    private

    def default_attrs
      {
        class: "text-sm text-muted-foreground"
      }
    end
  end
end
