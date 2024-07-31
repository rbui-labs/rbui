# frozen_string_literal: true

module RBUI
  class ComboboxContent < Base
    def view_template(&)
      div(**attrs) do
        div(
          data: {controller: "rbui--combobox-content", action: "keydown.up->rbui--combobox-content#handleKeyUp keydown.down->rbui--combobox-content#handleKeyDown keydown.enter->rbui--combobox-content#handleKeyEnter keydown.esc->rbui--combobox-content#handleKeyEsc"},
          class: "flex h-full w-full flex-col overflow-hidden rounded-md bg-popover text-popover-foreground rounded-lg border shadow-md", &
        )
      end
    end

    private

    def default_attrs
      {
        data: {rbui__combobox_target: "popover"},
        class: "invisible absolute top-0 left-0 p-1.5 rounded"
      }
    end
  end
end
