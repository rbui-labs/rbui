# frozen_string_literal: true

module PhlexUI
  class Typography::InlineLink < Base
    def initialize(href:, **attrs)
      super(**attrs)
      @href = href
    end

    def template(&block)
      a(href: @href, **attrs, &block)
    end

    private

    def default_attrs
      {
        class: "text-primary font-medium hover:underline underline-offset-4 cursor-pointer"
      }
    end
  end
end
