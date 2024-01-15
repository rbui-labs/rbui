# frozen_string_literal: true

module PhlexUI::Components
  class Table::Row < Base
    def template(&block)
      tr(**attrs, &block)
    end

    private

    def default_attrs
      {
        class: "border-b transition-colors hover:bg-muted hover:bg-opacity-50 data-[state=selected]:bg-muted"
      }
    end
  end
end
