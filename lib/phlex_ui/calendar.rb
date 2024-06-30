# frozen_string_literal: true

module PhlexUI
  class Calendar < Base
    def initialize(selected_date: nil, input_id: nil, date_format: "yyyy-MM-dd", **attrs)
      @selected_date = selected_date
      @input_id = input_id
      @date_format = date_format
      super(**attrs)
    end

    def view_template
      div(**attrs) do
        PhlexUI.CalendarHeader do
          PhlexUI.CalendarTitle
          PhlexUI.CalendarPrev
          PhlexUI.CalendarNext
        end
        PhlexUI.CalendarBody # Where the calendar is rendered (Weekdays and Days)
        PhlexUI.CalendarWeekdays # Template for the weekdays
        PhlexUI.CalendarDays # Template for the days
      end
    end

    private

    def default_attrs
      {
        class: "p-3 space-y-4",
        data: {
          controller: "calendar",
          calendar_selected_date_value: @selected_date&.to_s,
          calendar_format_value: @date_format,
          calendar_input_outlet: @input_id
        }
      }
    end
  end
end
