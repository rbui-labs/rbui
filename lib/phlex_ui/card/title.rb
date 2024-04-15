# frozen_string_literal: true

module PhlexUI
  class Card::Title < Base
    def view_template(&block)
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
