# frozen_string_literal: true

module PhlexUI::Components
  class Chart < PhlexUI::Base
    def initialize(options: {}, **attrs)
      @options = options.to_json
      super(**attrs)
    end

    def template(&block)
      canvas(**attrs, &block)
    end

    private

    def default_attrs
      {
        data_controller: "chart",
        data_chart_options_value: @options
      }
    end
  end
end
