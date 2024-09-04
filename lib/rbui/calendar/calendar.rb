# frozen_string_literal: true

module RBUI
  class Calendar < Base
    def initialize(selected_date: nil, input_id: nil, date_format: "yyyy-MM-dd", **attrs)
      @selected_date = selected_date
      @input_id = input_id
      @date_format = date_format
      super(**attrs)
    end

    def view_template
      div(**attrs) do
        RBUI.CalendarHeader do
          RBUI.CalendarTitle
          RBUI.CalendarPrev
          RBUI.CalendarNext
        end
        RBUI.CalendarBody # Where the calendar is rendered (Weekdays and Days)
        RBUI.CalendarWeekdays # Template for the weekdays
        RBUI.CalendarDays # Template for the days
      end
    end

    private

    def default_attrs
      {
        class: "p-3 space-y-4",
        data: {
          controller: "rbui--calendar",
          rbui__calendar_selected_date_value: @selected_date&.to_s,
          rbui__calendar_format_value: @date_format,
          rbui__calendar_rbui__calendar_input_outlet: @input_id
        }
      }
    end
  end
end
