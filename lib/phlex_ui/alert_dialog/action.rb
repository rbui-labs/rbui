# frozen_string_literal: true

module PhlexUI
  class AlertDialog::Action < Base
    def view_template(&block)
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
