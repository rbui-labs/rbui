# frozen_string_literal: true

module PhlexUI::Components
  class Collapsible::Content < Base
    def template(&block)
      div(**attrs, &block)
    end

    private

    def default_attrs
      {
        data: {collapsible_target: "content"},
        class: "overflow-y-hidden"
      }
    end
  end
end
