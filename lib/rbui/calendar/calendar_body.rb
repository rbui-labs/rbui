# frozen_string_literal: true

module RBUI
  class CalendarBody < Base
    def view_template
      table(**attrs)
    end

    private

    def default_attrs
      {
        data: {
          rbui__calendar_target: "calendar"
        }
      }
    end
  end
end
