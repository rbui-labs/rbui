# frozen_string_literal: true

module PhlexUI::Components
  class Alert::Title < Base
    def template(&block)
      h5(**attrs, &block)
    end

    private

    def default_attrs
      {
        class: "mb-1 font-medium leading-none tracking-tight"
      }
    end
  end
end
