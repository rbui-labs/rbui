# frozen_string_literal: true

module PhlexUI::Components
  class Typography::Lead < Base
    def template(&block)
      p(**attrs, &block)
    end

    private

    def default_attrs
      {
        class: "text-xl text-muted-foreground"
      }
    end
  end
end
