# frozen_string_literal: true

module PhlexUI::Components
  class Card < Base
    def template(&block)
      div(**attrs, &block)
    end

    private

    def default_attrs
      {
        class: "rounded-xl border bg-background shadow"
      }
    end
  end
end
