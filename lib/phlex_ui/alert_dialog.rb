# frozen_string_literal: true

module PhlexUI
  class AlertDialog < Base
    def initialize(open: false, **attrs)
      @open = open
      super(**attrs)
    end

    def template(&block)
      div(**attrs, &block)
    end

    private

    def default_attrs
      {
        data: {
          controller: "alert-dialog",
          alert_dialog_open_value: @open
        },
        class: "inline-block"
      }
    end
  end
end
