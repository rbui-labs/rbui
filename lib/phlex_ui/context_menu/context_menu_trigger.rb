# frozen_string_literal: true

module PhlexUI
  class ContextMenuTrigger < Base
    def view_template(&)
      div(**attrs, &)
    end

    private

    def default_attrs
      {
        data: {
          popover_target: "trigger",
          action: "contextmenu->popover#handleContextMenu"
        }
      }
    end
  end
end
