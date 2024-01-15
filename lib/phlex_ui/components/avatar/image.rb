# frozen_string_literal: true

module PhlexUI::Components
  class Avatar::Image < Base
    def initialize(src:, alt: "", **attrs)
      @src = src
      @alt = alt
      super(**attrs)
    end

    def template
      img(**attrs)
    end

    private

    def default_attrs
      {
        loading: "lazy",
        class: "aspect-square h-full w-full",
        alt: @alt,
        src: @src
      }
    end
  end
end
