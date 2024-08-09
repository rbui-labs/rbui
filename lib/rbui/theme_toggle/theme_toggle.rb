# frozen_string_literal: true

module RBUI
  class ThemeToggle < Base
    def view_template(&)
      div(**attrs, &)
    end

    def light_mode(**user_attrs, &)
      light_attrs = AttributeMerger.new(default_light_attrs, user_attrs).call
      div(**light_attrs, &)
    end

    def dark_mode(**user_attrs, &)
      dark_attrs = AttributeMerger.new(default_dark_attrs, user_attrs).call
      div(**dark_attrs, &)
    end

    private

    def default_attrs
      {
        data: { controller: "rbui--theme-toggle" }
      }
    end

    def default_light_attrs
      {
        class: "dark:hidden",
        data: { action: "click->rbui--theme-toggle#setDarkTheme" }
      }
    end

    def default_dark_attrs
      {
        class: "hidden dark:inline-block",
        data: { action: "click->rbui--theme-toggle#setLightTheme" }
      }
    end
  end
end
