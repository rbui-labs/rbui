# frozen_string_literal: true

module PhlexUI
  class Collapsible < Base
    def initialize(open: false, **attrs)
      @open = open
      super(**attrs)
    end

    def view_template(&block)
      div(**attrs, &block)
    end

    private

    def default_attrs
      {
        data: {
          controller: "collapsible",
          collapsible_open_value: @open
        }
      }
    end
  end
end
