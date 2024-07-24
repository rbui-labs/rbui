# frozen_string_literal: true

module PhlexUI
  class ClipboardTrigger < Base
    def view_template(&)
      div(**attrs, &)
    end

    private

    def default_attrs
      {
        data: {
          clipboard_target: "trigger",
          action: "click->clipboard#copy"
        }
      }
    end
  end
end
