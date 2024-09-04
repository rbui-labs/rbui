# frozen_string_literal: true

module RBUI
  class DialogTrigger < Base
    def view_template(&)
      div(**attrs, &)
    end

    private

    def default_attrs
      {
        data: {
          action: "click->rbui--dialog#open"
        },
        class: "inline-block"
      }
    end
  end
end
