# frozen_string_literal: true

module PhlexUI
  class DropdownMenu::Label < Base
    def template(&)
      h3(**attrs, &)
    end

    private

    def default_attrs
      {
        class: "px-2 py-1.5 text-sm font-semibold"
      }
    end
  end
end
