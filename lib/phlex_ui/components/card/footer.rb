# frozen_string_literal: true

module PhlexUI::Components
  class Card::Footer < Base
    def template(&block)
      div(**attrs, &block)
    end

    private

    def default_attrs
      {
        class: "items-center p-6 pt-0"
      }
    end
  end
end
