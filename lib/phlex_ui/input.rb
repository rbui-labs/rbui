# frozen_string_literal: true

module PhlexUI
  class Input < Base
    def initialize(type: :string, error: nil, **attrs)
      @type = type.to_sym
      @error = error
      super(**attrs)
    end

    def view_template
      input(type: @type, **attrs)
      render PhlexUI::InputError.new { @error } if @error
    end

    private

    def default_attrs
      {
        class: tokens(
          "flex h-9 w-full rounded-md border bg-background px-3 py-1 text-sm shadow-sm transition-colors file:border-0 file:bg-transparent file:text-sm file:font-medium focus-visible:outline-none focus-visible:ring-1 disabled:cursor-not-allowed disabled:opacity-50",
          -> { @error.nil? } => "border-border focus-visible:ring-ring placeholder:text-muted-foreground",
          -> { @error } => "placeholder:text-destructive/60 text-destructive dark:text-destructive border-destructive focus-visible:ring-destructive",
          -> { @type == :file } => "pt-1.5 dark:file:text-white"
        )
      }
    end
  end
end
