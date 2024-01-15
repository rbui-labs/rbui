# frozen_string_literal: true

module PhlexUI::Components
  class Typography::H3 < Base
    def template(&block)
      h3(**attrs, &block)
    end

    private

    def default_attrs
      {
        class: "scroll-m-20 text-xl font-semibold tracking-tight"
      }
    end
  end
end
