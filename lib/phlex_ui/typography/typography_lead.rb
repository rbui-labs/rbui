# frozen_string_literal: true

module PhlexUI
  class TypographyLead < Base
    def view_template(&)
      p(**attrs, &)
    end

    private

    def default_attrs
      {
        class: "text-xl text-muted-foreground"
      }
    end
  end
end
