# frozen_string_literal: true

module PhlexUI::Components
  class Typography::Muted < Base
    def template(&block)
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
