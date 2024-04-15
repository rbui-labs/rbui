# frozen_string_literal: true

module PhlexUI
  class Avatar::Fallback < Base
    def view_template(&)
      span(**attrs, &)
    end

    private

    def default_attrs
      {
        class: "flex h-full w-full items-center justify-center rounded-full bg-muted"
      }
    end
  end
end
