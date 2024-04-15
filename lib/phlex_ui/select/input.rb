# frozen_string_literal: true

module PhlexUI
  class Select::Input < Base
    def view_template
      render PhlexUI::Input.new(**attrs)
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
