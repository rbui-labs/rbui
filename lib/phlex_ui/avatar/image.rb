# frozen_string_literal: true

module PhlexUI
  class Avatar::Image < Base
    def initialize(src:, alt: "", **attrs)
      @src = src
      @alt = alt
      super(**attrs)
    end

    def view_template
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
