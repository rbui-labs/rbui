# frozen_string_literal: true

module PhlexUI
  class ThemeToggle < Base
    def view_template(&block)
      div(**attrs, &block)
    end

    def light_mode(**user_attrs, &)
      light_attrs = PhlexUI::AttributeMerger.new(default_light_attrs, user_attrs).call
      div(**light_attrs, &)
    end

    def dark_mode(**user_attrs, &)
      dark_attrs = PhlexUI::AttributeMerger.new(default_dark_attrs, user_attrs).call
      div(**dark_attrs, &)
    end

    private

    def default_attrs
      {
        data: {controller: "toggle-theme"}
      }
    end

    def default_light_attrs
      {
        class: "dark:hidden",
        data: {action: "click->toggle-theme#setDarkTheme"}
      }
    end

    def default_dark_attrs
      {
        class: "hidden dark:inline-block",
        data: {action: "click->toggle-theme#setLightTheme"}
      }
    end
  end
end
