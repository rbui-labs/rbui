# frozen_string_literal: true

module PhlexUI
  class ComboboxContent < Base
    def view_template(&)
      div(**attrs) do
        div(
          data: {controller: "phlexui--combobox-content", action: "keydown.up->phlexui--combobox-content#handleKeyUp keydown.down->phlexui--combobox-content#handleKeyDown keydown.enter->phlexui--combobox-content#handleKeyEnter keydown.esc->phlexui--combobox-content#handleKeyEsc"},
          class: "flex h-full w-full flex-col overflow-hidden rounded-md bg-popover text-popover-foreground rounded-lg border shadow-md", &
        )
      end
    end

    private

    def default_attrs
      {
        data: {phlexui__combobox_target: "popover"},
        class: "invisible absolute top-0 left-0 p-1.5 rounded"
      }
    end
  end
end
