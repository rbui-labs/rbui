# frozen_string_literal: true

module PhlexUI
  class Collapsible::Trigger < Base
    def template(&)
      div(**attrs, &)
    end

    private

    def default_attrs
      {
        data: {
          action: "click->collapsible#toggle"
        }
      }
    end
  end
end
