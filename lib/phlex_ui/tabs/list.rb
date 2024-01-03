# frozen_string_literal: true

module PhlexUI
  class Tabs::List < Base
    def template(&)
      div(**attrs, &)
    end

    private

    def default_attrs
      {
        class: "inline-flex h-9 items-center justify-center rounded-lg bg-muted p-1 text-muted-foreground"
      }
    end
  end
end
