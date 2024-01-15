# frozen_string_literal: true

module PhlexUI::Components
  class Typography::Large < Base
    def template(&block)
      div(**attrs, &block)
    end

    private

    def default_attrs
      {
        class: "text-lg font-semibold"
      }
    end
  end
end
