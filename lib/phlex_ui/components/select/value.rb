# frozen_string_literal: true

module PhlexUI::Components
  class Select::Value < Base
    def initialize(placeholder: nil, **attrs)
      @placeholder = placeholder
      super(**attrs)
    end

    def template(&block)
      span(**attrs) do
        block ? block.call : @placeholder
      end
    end

    private

    def default_attrs
      {
        data: {
          controller: "text"
        },
        class: "pointer-events-none"
      }
    end
  end
end
