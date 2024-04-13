# frozen_string_literal: true

module PhlexUI
  class Alert::Description < Base
    def view_template(&block)
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
