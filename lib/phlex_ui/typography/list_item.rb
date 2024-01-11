# frozen_string_literal: true

module PhlexUI
  class Typography::ListItem < Base
    def template(&block)
      li(**attrs, &block)
    end

    private

    def default_attrs
      {
        class: "leading-7"
      }
    end
  end
end
