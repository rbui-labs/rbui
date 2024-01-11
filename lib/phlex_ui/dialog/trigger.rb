# frozen_string_literal: true

module PhlexUI
  class Dialog::Trigger < Base
    def template(&block)
      div(**attrs, &block)
    end

    private

    def default_attrs
      {
        data: {
          action: "click->dialog#open"
        },
        class: "inline-block"
      }
    end
  end
end
