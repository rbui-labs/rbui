# frozen_string_literal: true

module PhlexUI::Components
  class InputError < Base
    def template(&block)
      p(**attrs, &block)
    end

    private

    def default_attrs
      {
        class: "mt-2 text-sm text-destructive"
      }
    end
  end
end
