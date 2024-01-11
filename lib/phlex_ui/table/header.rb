# frozen_string_literal: true

module PhlexUI
  class Table::Header < Base
    def template(&)
      thead(**attrs, &)
    end

    private

    def default_attrs
      {
        class: "[&_tr]:border-b"
      }
    end
  end
end
