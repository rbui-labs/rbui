# frozen_string_literal: true

module PhlexUI
  class TypographyH3 < Base
    def view_template(&)
      h3(**attrs, &)
    end

    private

    def default_attrs
      {
        class: "scroll-m-20 text-xl font-semibold tracking-tight"
      }
    end
  end
end
