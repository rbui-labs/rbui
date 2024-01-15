# frozen_string_literal: true

module PhlexUI::Components
  class DropdownMenu::Label < Base
    def template(&block)
      h3(**attrs, &block)
    end

    private

    def default_attrs
      {
        class: "px-2 py-1.5 text-sm font-semibold"
      }
    end
  end
end
