# frozen_string_literal: true

module PhlexUI
  class Card::Title < Base
    def template(&)
      h3(**attrs, &)
    end

    private

    def default_attrs
      {
        class: "font-semibold leading-none tracking-tight"
      }
    end
  end
end
