# frozen_string_literal: true

module PhlexUI
  class Select < Base
    def initialize(options: {}, **attrs)
      @options = options
      @options[:trigger] ||= "click"
      @options[:duration] ||= [500, 0]
      @options[:placement] ||= "bottom"
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