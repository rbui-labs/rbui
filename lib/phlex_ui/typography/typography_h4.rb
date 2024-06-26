# frozen_string_literal: true

module PhlexUI
  class TypographyH4 < Base
    def view_template(&)
      h4(**attrs, &)
    end

    private

    def default_attrs
      {
        class: "scroll-m-20 text-lg font-medium tracking-tight"
      }
    end
  end
end
