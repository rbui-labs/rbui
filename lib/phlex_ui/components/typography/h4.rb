# frozen_string_literal: true

module PhlexUI::Components
  class Typography::H4 < Base
    def template(&block)
      h4(**attrs, &block)
    end

    private

    def default_attrs
      {
        class: "scroll-m-20 text-lg font-medium tracking-tight"
      }
    end
  end
end
