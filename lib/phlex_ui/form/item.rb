# frozen_string_literal: true

module PhlexUI
  class Form::Item < Base
    def template(&)
      div(**attrs, &)
    end

    private

    def default_attrs
      {
        class: "space-y-2"
      }
    end
  end
end
