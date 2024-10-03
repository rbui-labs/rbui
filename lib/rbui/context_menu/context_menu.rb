# frozen_string_literal: true

module RBUI
  class ContextMenu < Base
    def initialize(options: {}, **attrs)
      @options = options
      @options[:trigger] ||= "contextmenu"
      super(**attrs)
    end

    def view_template(&)
      div(**attrs, &)
    end

    private

    def default_attrs
      {
        data: {
          controller: "rbui--context-menu",
          rbui__context_menu_options_value: @options.to_json,
          rbui__context_menu_trigger_value: @options[:trigger]
        }
      }
    end
  end
end
