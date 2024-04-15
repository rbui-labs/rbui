# frozen_string_literal: true

module PhlexUI
  class Typography::Large < Base
    def view_template(&)
      div(**attrs, &)
    end

    private

    def default_attrs
      {
        class: "text-lg font-semibold"
      }
    end
  end
end
