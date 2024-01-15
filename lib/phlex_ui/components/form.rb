# frozen_string_literal: true

module PhlexUI::Components
  class Form < Base
    def template(&block)
      form(**attrs, &block)
    end

    private

    def default_attrs
      {}
    end
  end
end
