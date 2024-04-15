# frozen_string_literal: true

module PhlexUI
  class Table::Body < Base
    def view_template(&)
      tbody(**attrs, &)
    end

    private

    def default_attrs
      {
        class: "[&_tr:last-child]:border-0"
      }
    end
  end
end
