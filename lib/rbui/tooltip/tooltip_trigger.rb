# frozen_string_literal: true

module RBUI
  class TooltipTrigger < Base
    def view_template(&)
      PhlexUI.Button(**attrs, &)
    end

    private

    def default_attrs
      {
        data: {rbui__tooltip_target: "trigger"},
        variant: :outline,
        class: "peer"
      }
    end
  end
end
