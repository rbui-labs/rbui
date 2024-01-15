# frozen_string_literal: true

module PhlexUI::Components
  class Card::Content < Base
    def template(&block)
      div(**attrs, &block)
    end

    private

    def default_attrs
      {
        class: "p-6 pt-0"
      }
    end
  end
end
