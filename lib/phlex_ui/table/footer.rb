# frozen_string_literal: true

module PhlexUI
  class Table::Footer < Base
    def template(&block)
      tfoot(**attrs, &block)
    end

    private

    def default_attrs
      {
        class: "border-t bg-muted bg-opacity-50 font-medium[& amp;>tr]:last:border-b-0"
      }
    end
  end
end
