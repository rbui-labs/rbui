# frozen_string_literal: true

module PhlexUI
    class Avatar < Base
        SIZES = {
            xs: "h-4 w-4 text-[0.5rem]",
            sm: "h-6 w-6 text-xs",
            md: "h-10 w-10 text-base",
            lg: "h-14 w-14 text-xl",
            xl: "h-20 w-20 text-3xl"
        }

        def initialize(size: :md, src: nil, alt: nil, initials: nil, **attrs)
            @size = size
            @src = src
            @alt = alt
            @initials = initials
            @size_classes = SIZES[@size]
            super(**attrs)
        end

        def template(&block)
            if block_given?
                span(**attrs, &block)
            else
                span(**attrs) do
                    render_image if @src
                    render_initials
                end
            end
        end

        private

        def render_image
            render ::PhlexUI::Avatar::Image.new(src: @src, alt: @alt)
        end

        def render_initials
            render ::PhlexUI::Avatar::Fallback.new { @initials }
        end

        def default_attrs
            {
                class: tokens("relative flex shrink-0 overflow-hidden rounded-full", @size_classes)
            }
        end
    end
end