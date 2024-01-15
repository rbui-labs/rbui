# frozen_string_literal: true

module PhlexUI::Components
  class AlertDialog::Action < Base
    def template(&block)
      render PhlexUI::Button.new(**attrs, &block)
    end

    private

    def default_attrs
      {
        variant: :primary
      }
    end
  end
end
