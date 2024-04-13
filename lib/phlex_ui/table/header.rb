# frozen_string_literal: true

module PhlexUI
  class Table::Header < Base
    def view_template(&block)
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
