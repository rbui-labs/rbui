# frozen_string_literal: true

module PhlexUI
  class DropdownMenu < Base
    def initialize(options: {}, **attrs)
      @options = options
      @options[:trigger] ||= "click"
      super(**attrs)
    end

    def template(&block)
      div(**attrs, &block)
    end

    private

    def default_attrs
      {
        data: {
          controller: "popover",
          popover_options_value: @options.to_json
        }
      }
    end
  end
end
