# frozen_string_literal: true

module PhlexUI
    class Input < Base
        def initialize(type: :string, **attrs)
            @type = type.to_sym
            super(**attrs)
        end

        def template
            input(type: @type, **attrs)
        end

        private

        def default_attrs
            {
                class: tokens(
                    "flex h-9 w-full rounded-md border border-input bg-transparent px-3 py-1 text-sm shadow-sm transition-colors file:border-0 file:bg-transparent file:text-sm file:font-medium placeholder:text-muted-text focus-visible:outline-none focus-visible:ring-1 focus-visible:ring-ring disabled:cursor-not-allowed disabled:opacity-50",
                    -> { @type == :file } => "pt-1.5 dark:file:text-white"
                ),
            }
        end
    end
end