# frozen_string_literal: true

module PhlexUI::Components
  class Select::Group < Base
    def template(&block)
      div(**attrs, &block)
    end

    private

    def default_attrs
      {}
    end
  end
end
