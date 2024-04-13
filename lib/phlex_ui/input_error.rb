# frozen_string_literal: true

module PhlexUI
  class InputError < Base
    def view_template(&block)
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
