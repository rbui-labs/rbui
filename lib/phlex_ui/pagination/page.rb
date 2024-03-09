# frozen_string_literal: true

module PhlexUI
  class Pagination::Page < Base
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
        class: tokens(
          "inline-flex items-center justify-center whitespace-nowrap rounded-md text-sm font-medium ring-offset-background transition-colors focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2 disabled:pointer-events-none disabled:opacity-50 hover:bg-accent hover:text-accent-foreground h-10 px-4 gap-1 py-2",
          -> { @active } => "border border-input bg-background hover:bg-accent hover:text-accent-foreground"
        )
      }
    end
  end
end
