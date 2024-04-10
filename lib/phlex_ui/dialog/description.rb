# frozen_string_literal: true

module PhlexUI
  class Dialog::Description < Base
    def view_template(&block)
      p(**attrs, &block)
    end

    private

    def default_attrs
      {
        class: "text-sm text-muted-foreground"
      }
    end
  end
end
