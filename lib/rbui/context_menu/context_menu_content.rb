# frozen_string_literal: true

module RBUI
  class ContextMenuContent < Base
    def view_template(&)
      div(**attrs, &)
    end

    private

    def default_attrs
      {
        role: "menu",
        aria_orientation: "vertical",
        data: {
          rbui__context_menu_target: "content",
          state: "closed"
        },
        class: [
          "hidden z-50 min-w-[8rem] overflow-hidden rounded-md border bg-background p-1 text-foreground shadow-md outline-none",
          "data-[state=open]:animate-in data-[state=closed]:animate-out data-[state=closed]:fade-out-0 data-[state=open]:fade-in-0",
          "data-[state=closed]:zoom-out-95 data-[state=open]:zoom-in-95 data-[side=bottom]:slide-in-from-top-2",
          "data-[side=left]:slide-in-from-right-2 data-[side=right]:slide-in-from-left-2 data-[side=top]:slide-in-from-bottom-2",
          "absolute"
        ],
        tabindex: "-1"
      }
    end
  end
end
