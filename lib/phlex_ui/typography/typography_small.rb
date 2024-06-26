# frozen_string_literal: true

module PhlexUI
  class TypographySmall < Base
    def view_template(&)
      small(**attrs, &)
    end

    private

    def default_attrs
      {
        class: "text-sm font-medium leading-none"
      }
    end
  end
end
