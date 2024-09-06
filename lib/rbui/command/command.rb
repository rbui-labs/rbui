# frozen_string_literal: true

module RBUI
  class Command < Base
    def view_template(&)
      div(**attrs, &)
    end
  end
end
