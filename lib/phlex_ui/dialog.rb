# frozen_string_literal: true

module PhlexUI
  class Dialog < Base
    def initialize(open: false, **attrs)
      @open = open
      super(**attrs)
    end

    def template(&)
      div(**attrs, &)
    end

    private

    def default_attrs
      {
        data: {
          controller: "dialog",
          dialog_open_value: @open
        }
      }
    end
  end
end
