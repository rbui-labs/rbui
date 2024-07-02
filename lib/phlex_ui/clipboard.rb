# frozen_string_literal: true

module PhlexUI
  class Clipboard < Base
    def initialize(success: "Copied!", error: "Copy Failed!", **attrs)
      @success = success
      @error = error
      super(**attrs)
    end

    def view_template(&block)
      div(**attrs) do
        div(&block)
        success_popover
        error_popover
      end
    end

    private

    def success_popover
      ClipboardPopover(type: :success) { @success }
    end

    def error_popover
      ClipboardPopover(type: :error) { @error }
    end

    def default_attrs
      {
        data: {
          controller: "clipboard",
          clipboard_success_value: @success,
          clipboard_error_value: @error
        }
      }
    end
  end
end
