# frozen_string_literal: true

module PhlexUI::Components
  class Accordion::Content < Base
    def template(&block)
      div(**attrs, &block)
    end

    private

    def default_attrs
      {
        data: {
          accordion_target: "content"
        },
        class: "overflow-y-hidden",
        style: "height: 0px;"
      }
    end
  end
end
