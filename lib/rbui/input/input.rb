# frozen_string_literal: true

module RBUI
  class Input < Base
    def initialize(type: :string, **attrs)
      @type = type.to_sym
      super(**attrs)
    end

    def view_template
      input(type: @type, **attrs)
    end

    private

    def default_classes_by_type
      return file_classes if @type == :file

      default_classes
    end

    def default_classes
      "flex h-9 w-full rounded-md border bg-background px-3 py-1 text-sm shadow-sm transition-colors file:border-0 file:bg-transparent file:text-sm file:font-medium focus-visible:outline-none focus-visible:ring-1 disabled:cursor-not-allowed disabled:opacity-50 border-border focus-visible:ring-ring placeholder:text-muted-foreground"
    end

    def file_classes
      "flex h-9 w-full rounded-md border bg-background px-3 text-sm shadow-sm transition-colors file:border-0 file:bg-transparent file:text-sm file:font-medium focus-visible:outline-none focus-visible:ring-1 disabled:cursor-not-allowed disabled:opacity-50 border-border focus-visible:ring-ring placeholder:text-muted-foreground hover:file:cursor-pointer py-1.5"
    end

    def default_attrs
      {
        data: {
          rbui__form_field_target: "input",
          action: "input->rbui--form-field#onInput invalid->rbui--form-field#onInvalid"
        },
        class: default_classes_by_type
      }
    end
  end
end
