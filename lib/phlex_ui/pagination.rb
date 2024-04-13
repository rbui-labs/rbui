# frozen_string_literal: true

module PhlexUI
  class Pagination < Base
    def view_template(&block)
      nav(**attrs, &block)
    end

    private

    def default_attrs
      {
        aria: {label: "pagination"},
        class: "mx-auto flex w-full justify-center",
        role: "navigation"
      }
    end
  end
end
