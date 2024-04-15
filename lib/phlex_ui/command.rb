# frozen_string_literal: true

module PhlexUI
  class Command < Base
    def view_template(&block)
      div(**attrs, &block)
    end

    private

    def default_attrs
      {
        data: {controller: "command"}
      }
    end
  end
end
