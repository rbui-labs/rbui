# frozen_string_literal: true

module PhlexUI
    class Input < Base
        def initialize(type: :string, error: nil, **attrs)
            @type = type.to_sym
            @error = error
            super(**attrs)
        end

        def template
            input(type: @type, **attrs)
            render PhlexUI::InputError.new { @error } if @error
        end

        private

        def default_attrs
            {
                class: tokens(
                    "flex h-9 w-full rounded-md border bg-transparent px-3 py-1 text-sm shadow-sm transition-colors file:border-0 file:bg-transparent file:text-sm file:font-medium focus-visible:outline-none focus-visible:ring-1 disabled:cursor-not-allowed disabled:opacity-50",
                    -> { @error.nil? } => "border-border focus-visible:ring-ring placeholder:text-muted-text",
                    -> { @error.present? } => "placeholder:text-destructive-900/50 dark:placeholder:text-destructive-200/50 text-destructive-900 dark:text-destructive-300 border-destructive-300 dark:border-destructive focus-visible:ring-destructive dark:focus-visible:ring-destructive-300",
                    -> { @type == :file } => "pt-1.5 dark:file:text-white"
                ),
            }
        end
    end
end