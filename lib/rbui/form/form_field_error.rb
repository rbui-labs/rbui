# frozen_string_literal: true

module RBUI
  class FormFieldError < Base
    def view_template(&)
      p(**attrs, &)
    end

    private

    def default_attrs
      {
        data: {
          rbui__form_field_target: "message"
        },
        class: "text-sm font-medium text-destructive"
      }
    end
  end
end
