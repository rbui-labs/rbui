# frozen_string_literal: true

module PhlexUI
  class Select < Base
    def initialize(options: {}, **attrs)
      @options = options
      @options[:trigger] ||= "click"
      @options[:duration] ||= [500, 0]
      @options[:placement] ||= "bottom-start"
      super(**attrs)
    end

    def view_template(&block)
      div(**attrs, &block)
    end

    private

    def default_attrs
      {
        data: {
          controller: "popover",
          popover_match_width_value: "true",
          popover_options_value: @options.to_json
        },
        class: "w-full"
      }
    end
  end
end
