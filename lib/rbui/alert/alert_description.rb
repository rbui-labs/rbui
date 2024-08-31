# frozen_string_literal: true

module RBUI
  class AlertDescription < Base
    def view_template(&)
      div(**attrs, &)
    end

    private

    def default_attrs
      {
        class: "text-sm [&_p]:leading-relaxed"
      }
    end
  end
end
