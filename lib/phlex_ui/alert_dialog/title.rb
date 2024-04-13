# frozen_string_literal: true

module PhlexUI
  class AlertDialog::Title < Base
    def template(&)
      h2(**attrs, &)
    end

    private

    def default_attrs
      {
        class: "text-lg font-semibold"
      }
    end
  end
end
