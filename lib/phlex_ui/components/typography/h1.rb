# frozen_string_literal: true

module PhlexUI::Components
  class Typography::H1 < Base
    def template(&block)
      h1(**attrs, &block)
    end

    private

    def default_attrs
      {
        class: "scroll-m-20 text-3xl font-bold leading-normal lg:leading-normal tracking-tight lg:text-4xl"
      }
    end
  end
end
