# frozen_string_literal: true

module PhlexUI
  class Dialog::Middle < Base
    def view_template(&block)
      div(**attrs, &block)
    end

    private

    def default_attrs
      {
        class: "py-4"
      }
    end
  end
end
