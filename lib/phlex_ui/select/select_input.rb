# frozen_string_literal: true

module PhlexUI
  class SelectInput < Base
    def view_template
      PhlexUI.Input(**attrs)
    end

    private

    def default_attrs
      {
        class: "hidden",
        data: {
          controller: "input"
        }
      }
    end
  end
end
