# frozen_string_literal: true

module PhlexUI
    class Alert < Base
        def initialize(variant: nil, **attrs)
            @variant = variant
            super(**attrs) # must be called after variant is set
        end

        def template(&)
            div(**attrs, &)
        end

        private

        def colors
            case @variant
            when nil
                'ring-gray-600/10 bg-muted text-text [&>svg]:text-muted'
            when :warning
                'ring-warning-600/10 bg-warning-100 text-warning-800 [&>svg]:text-warning'
            when :success
                'ring-success-700/10 bg-success-100 text-success-800 [&>svg]:text-success'
            when :destructive
                'ring-destructive-600/10 text-destructive-800 bg-destructive-100 [&>svg]:text-destructive'
            end
        end

        def default_attrs
            base_classes = 'relative w-full ring-1 ring-inset rounded-lg px-4 py-4 text-sm [&>svg+div]:translate-y-[-3px] [&>svg]:absolute [&>svg]:left-4 [&>svg]:top-4 [&>svg~*]:pl-8'
            {
                class: tokens(base_classes, colors),
            }
        end
    end
end
