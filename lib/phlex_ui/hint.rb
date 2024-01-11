# frozen_string_literal: true

module PhlexUI
  class Hint < Base
    def template(&block)
      p(**attrs, &block)
    end

    private

    def default_attrs
      {
        class: "text-[0.8rem] text-muted-foreground"
      }
    end
  end
end
