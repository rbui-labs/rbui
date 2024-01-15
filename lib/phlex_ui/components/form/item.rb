# frozen_string_literal: true

module PhlexUI::Components
  class Form::Item < Base
    def template(&block)
      div(**attrs, &block)
    end

    private

    def default_attrs
      {
        class: "space-y-2"
      }
    end
  end
end
