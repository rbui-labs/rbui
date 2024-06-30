# frozen_string_literal: true

module PhlexUI
  class CalendarBody < Base
    def view_template
      table(**attrs)
    end

    private

    def default_attrs
      {
        data: {
          calendar_target: "calendar"
        }
      }
    end
  end
end
