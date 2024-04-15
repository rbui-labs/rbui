# frozen_string_literal: true

module PhlexUI
  class Accordion < Base
    def view_template(&block)
      div(**attrs, &block)
    end

    private

    def default_attrs
      {
        class: "w-full"
      }
    end
  end
end
