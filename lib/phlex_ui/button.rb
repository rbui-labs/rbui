# frozen_string_literal: true

module PhlexUI
    class Button < Base
        def initialize(variant: :primary, size: :md, **attrs)
            @variant = variant.to_sym
            @size = size.to_sym
            super(**attrs)
        end

        def template(&)
            button(**attrs, &)
        end

        private

        def size_classes
            case @size
            when :sm
                "px-3 py-1.5 h-8 text-xs"
            when :md
                "px-4 py-2 h-9 text-sm"
            when :lg
                "px-4 py-2 h-10 text-base"
            when :xl
                "px-6 py-3 h-12 text-base"
            when :icon
                "h-9 w-9"
            end
        end

        def primary_classes
            tokens(
                "whitespace-nowrap inline-flex items-center justify-center rounded-md font-medium transition-colors focus-visible:outline-none focus-visible:ring-1 focus-visible:ring-ring disabled:pointer-events-none disabled:opacity-50 bg-primary text-white shadow hover:bg-primary/90",
                size_classes
            )
        end

        def link_classes
            tokens(
                "whitespace-nowrap inline-flex items-center justify-center rounded-md font-medium transition-colors focus-visible:outline-none focus-visible:ring-1 focus-visible:ring-ring disabled:pointer-events-none disabled:opacity-50 text-primary underline-offset-4 hover:underline",
                size_classes
            )
        end

        def secondary_classes
            tokens(
                "whitespace-nowrap inline-flex items-center justify-center rounded-md font-medium transition-colors focus-visible:outline-none focus-visible:ring-1 focus-visible:ring-ring disabled:pointer-events-none disabled:opacity-50 bg-muted-background text-text shadow-sm hover:bg-opacity-80",
                size_classes
            )
        end

        def destructive_classes
            tokens(
                "whitespace-nowrap inline-flex items-center justify-center rounded-md font-medium transition-colors focus-visible:outline-none focus-visible:ring-1 focus-visible:ring-ring disabled:pointer-events-none disabled:opacity-50 bg-destructive text-white shadow-sm hover:bg-destructive/90",
                size_classes
            )
        end

        def outline_classes
            tokens(
                "whitespace-nowrap inline-flex items-center justify-center rounded-md font-medium transition-colors focus-visible:outline-none focus-visible:ring-1 focus-visible:ring-ring disabled:pointer-events-none disabled:opacity-50 border border-input bg-transparent shadow-sm hover:bg-accent-background hover:text-accent-text",
                size_classes
            )
        end

        def ghost_classes
            tokens(
                "whitespace-nowrap inline-flex items-center justify-center rounded-md font-medium transition-colors focus-visible:outline-none focus-visible:ring-1 focus-visible:ring-ring disabled:pointer-events-none disabled:opacity-50 hover:bg-accent-background hover:text-accent-text",
                size_classes
            )
        end

        def default_classes
            case @variant
            when :primary then primary_classes
            when :link then link_classes
            when :secondary then secondary_classes
            when :destructive then destructive_classes
            when :outline then outline_classes
            when :ghost then ghost_classes
            end
        end

        def default_attrs
            {
                type: "button",
                class: default_classes,
            }
        end
    end
end