# frozen_string_literal: true

module PhlexUI::Components
  class Accordion::Trigger < Base
    def template(&block)
      button(**attrs, &block)
    end

    def default_attrs
      {
        data: {action: "click->accordion#toggle"},
        class: "w-full flex flex-1 items-center justify-between py-4 text-sm font-medium transition-all hover:underline"
      }
    end
  end
end
