# frozen_string_literal: true

module PhlexUI
  class HoverCard < Base
    def initialize(option: {}, **attrs)
      @options = option
      @options[:delay] ||= [500, 250]
      @options[:trigger] ||= "mouseenter focus click"
      super(**attrs)
    end

    def template(&)
      div(**attrs, &)
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
