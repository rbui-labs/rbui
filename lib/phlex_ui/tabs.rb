# frozen_string_literal: true

module PhlexUI
  class Tabs < Base
    def initialize(default: nil, **attrs)
      @default = default
      super(**attrs)
    end

    def view_template(&)
      div(**attrs, &)
    end

    private

    def default_attrs
      {
        data: {
          controller: "tabs",
          tabs_active_value: @default
        }
      }
    end
  end
end
