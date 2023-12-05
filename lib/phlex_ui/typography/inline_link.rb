# frozen_string_literal: true

module PhlexUI
    class Typography::InlineLink < Base
        def initialize(href:, **attrs)
            super(**attrs)
            @href = href
        end

        def template(&)
            a(href: @href, **attrs, &)
        end

        private

        def default_attrs
            {
                class: "text-primary font-semibold hover:underline underline-offset-4 cursor-pointer"
            }
        end
    end
end