# frozen_string_literal: true

module PhlexUI::Components
  class Alert::Description < Base
    def template(&block)
      div(**attrs, &block)
    end

    private

    def default_attrs
      {
        class: "text-sm [&_p]:leading-relaxed"
      }
    end
  end
end
