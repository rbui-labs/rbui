# frozen_string_literal: true

module PhlexUI
  class Typography::H2 < Base
    def template(&block)
      h2(**attrs, &block)
    end

    private

    def default_attrs
      {
        class: "scroll-m-20 text-2xl font-semibold tracking-tight transition-colors first:mt-0 pb-4 border-b"
      }
    end
  end
end
