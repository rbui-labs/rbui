# frozen_string_literal: true

module PhlexUI
  class Select::Value < Base
    def initialize(placeholder: nil, **attrs)
      @placeholder = placeholder
      super(**attrs)
    end

    def template
      span(**attrs) { @placeholder }
    end

    private

    def default_attrs
      {
        data: {
          controller: "text",
        },
        class: 'pointer-events-none'
      }
    end
  end
end