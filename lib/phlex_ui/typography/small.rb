# frozen_string_literal: true

module PhlexUI
  class Typography::Small < Base
    def view_template(&block)
      small(**attrs, &block)
    end

    private

    def default_attrs
      {
        class: "text-sm font-medium leading-none"
      }
    end
  end
end
