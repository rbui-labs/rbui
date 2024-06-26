# frozen_string_literal: true

module PhlexUI
  class ClipboardSource < Base
    def view_template(&)
      div(**attrs, &)
    end

    private

    def default_attrs
      {
        data: {
          clipboard_target: "source"
        }
      }
    end
  end
end
