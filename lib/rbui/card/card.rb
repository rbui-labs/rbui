# frozen_string_literal: true

module RBUI
  class Card < Base
    def view_template(&)
      div(**attrs, &)
    end

    private

    def default_attrs
      {
        class: "rounded-xl border bg-background shadow"
      }
    end
  end
end
