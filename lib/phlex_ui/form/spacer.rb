# frozen_string_literal: true

module PhlexUI
  class Form::Spacer < Base
    def template(&)
      div(**attrs, &)
    end

    private

    def default_attrs
      {
        class: "space-y-4"
      }
    end
  end
end
