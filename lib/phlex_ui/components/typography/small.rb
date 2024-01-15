# frozen_string_literal: true

module PhlexUI::Components
  class Typography::Small < Base
    def template(&block)
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
