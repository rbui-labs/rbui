# frozen_string_literal: true

module RBUI
  class TypographyH1 < Base
    def view_template(&)
      h1(**attrs, &)
    end

    private

    def default_attrs
      {
        class: "scroll-m-20 text-3xl font-bold leading-normal lg:leading-normal tracking-tight lg:text-4xl"
      }
    end
  end
end
