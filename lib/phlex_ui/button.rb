module PhlexUI
    class Button < Base
        def initialize(**kwargs)
            @variant = kwargs[:variant]&.to_sym || :primary
            @size = kwargs[:size]
            @kwargs = kwargs
            @kwargs[:type] ||= "button"
        end

        def template(&)
            case @variant
            when :primary
                button(
                    **@kwargs, 
                    class: tokens(
                        "whitespace-nowrap inline-flex items-center justify-center rounded-md text-sm font-medium transition-colors focus-visible:outline-none focus-visible:ring-1 focus-visible:ring-ring disabled:pointer-events-none disabled:opacity-50 bg-primary-600 dark:bg-primary-500 text-white shadow hover:bg-primary-700 dark:hover:bg-primary-600 h-9",
                        -> { @size == :icon } => "h-9 w-9 justify-center",
                        -> { @size.nil? } => "px-4 py-2",
                        -> { @kwargs[:class] } => @kwargs[:class]
                    ), 
                    &)
            when :link
                button(
                    **@kwargs, 
                    class: tokens(
                        "whitespace-nowrap inline-flex items-center justify-center rounded-md text-sm font-medium transition-colors focus-visible:outline-none focus-visible:ring-1 focus-visible:ring-ring disabled:pointer-events-none disabled:opacity-50 text-primary-600 dark:text-primary-400 underline-offset-4 hover:underline h-9 px-4 py-2",
                        -> { @kwargs[:class] } => @kwargs[:class]
                    ),
                    &)
            when :secondary
                button(
                    **@kwargs,
                    class: tokens(
                        "whitespace-nowrap inline-flex items-center justify-center rounded-md text-sm font-medium transition-colors focus-visible:outline-none focus-visible:ring-1 focus-visible:ring-ring disabled:pointer-events-none disabled:opacity-50 bg-primary-100 dark:bg-accent text-primary-600 dark:text-white shadow-sm hover:bg-primary-200 hover:text-primary-700 dark:hover:bg-opacity-10 h-9",
                        -> { @size == :icon } => "h-9 w-9 justify-center",
                        -> { @size.nil? } => "px-4 py-2",
                        -> { @kwargs[:class] } => @kwargs[:class]
                    ),
                    &)
            when :destructive
                button(
                    **@kwargs,
                    class: tokens(
                        "whitespace-nowrap inline-flex items-center justify-center rounded-md text-sm font-medium transition-colors focus-visible:outline-none focus-visible:ring-1 focus-visible:ring-ring disabled:pointer-events-none disabled:opacity-50 bg-destructive-600 hover:bg-destructive-700 dark:bg-destructive-500 dark:hover:bg-destructive-600 text-white shadow-sm h-9",
                        -> { @size == :icon } => "h-9 w-9 justify-center",
                        -> { @size.nil? } => "px-4 py-2",
                        -> { @kwargs[:class] } => @kwargs[:class]
                    ),
                    &)
            when :outline
                button(
                    **@kwargs,
                    class: tokens(
                        "whitespace-nowrap inline-flex items-center justify-center rounded-md text-sm font-medium transition-colors focus-visible:outline-none focus-visible:ring-1 focus-visible:ring-ring disabled:pointer-events-none disabled:opacity-50 border bg-transparent shadow-sm hover:bg-accent h-9",
                        -> { @size == :icon } => "h-9 w-9 justify-center",
                        -> { @size.nil? } => "px-4 py-2",
                        -> { @kwargs[:class] } => @kwargs[:class]
                    ),
                    &)
            when :ghost
                button(
                    **@kwargs,
                    class: tokens(
                        "whitespace-nowrap inline-flex items-center justify-center rounded-md text-sm font-medium transition-colors focus-visible:outline-none focus-visible:ring-1 focus-visible:ring-ring disabled:pointer-events-none disabled:opacity-50 hover:bg-accent h-9",
                        -> { @size == :icon } => "h-9 w-9 justify-center",
                        -> { @size.nil? } => "px-4 py-2",
                        -> { @kwargs[:class] } => @kwargs[:class]
                    ),
                    &)
            end
        end
    end
end