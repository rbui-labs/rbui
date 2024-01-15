# frozen_string_literal: true

module PhlexUI::Components
  class Card::Title < Base
    def template(&block)
      h3(**attrs, &block)
    end

    private

    def default_attrs
      {
        class: "font-semibold leading-none tracking-tight"
      }
    end
  end
end
