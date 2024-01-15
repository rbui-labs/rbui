# frozen_string_literal: true

module PhlexUI::Components
  class Clipboard::Source < Base
    def template(&block)
      div(**attrs, &block)
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
