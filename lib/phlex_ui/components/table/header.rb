# frozen_string_literal: true

module PhlexUI::Components
  class Table::Header < Base
    def template(&block)
      thead(**attrs, &block)
    end

    private

    def default_attrs
      {
        class: "[&_tr]:border-b"
      }
    end
  end
end
