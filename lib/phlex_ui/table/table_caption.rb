# frozen_string_literal: true

module PhlexUI
  class TableCaption < Base
    def view_template(&)
      caption(**attrs, &)
    end

    private

    def default_attrs
      {
        class: "mt-4 text-sm text-muted-foreground"
      }
    end
  end
end
