# frozen_string_literal: true

module PhlexUI
  class Pagination::Item < Base
    def initialize(href: "#", active: false, **attrs)
      @href = href
      @active = active
      super(**attrs)
    end

    def template(&block)
      li do
        a(href: @href, **attrs, &block)
      end
    end

    private

    def default_attrs
      {
        aria: {current: @active ? "page" : nil},
        class: tokens(
          PhlexUI::Button.new(variant: @active ? :outline : :ghost).attrs[:class]
        )
      }
    end
  end
end
