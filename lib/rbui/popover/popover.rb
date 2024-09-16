# frozen_string_literal: true

module RBUI
  class Popover < Base
    def initialize(options: {}, **attrs)
      @options = options
      super(**attrs)
    end

    def view_template(&)
      div(**attrs, &)
    end

    private

    def default_attrs
      {
        data: {
          controller: "rbui--popover",
          rbui__popover_options_value: @options.to_json
        }
      }
    end
  end
end
