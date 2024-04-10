# frozen_string_literal: true

module PhlexUI
  class Typography::List < Base
    def initialize(items: [], numbered: false, **attrs)
      @items = items
      @numbered = numbered
      super(**attrs)
    end

    def view_template(&block)
      if @items.empty?
        list(**attrs, &block)
      else
        list(**attrs) do
          @items.each do |item|
            render PhlexUI::Typography::ListItem.new { item }
          end
        end
      end
    end

    private

    def list(**attrs, &block)
      if numbered?
        ol(**attrs, &block)
      else
        ul(**attrs, &block)
      end
    end

    def numbered? = @numbered

    def not_numbered? = !numbered?

    def default_attrs
      {
        class: tokens(
          "my-6 ml-6 [&>li]:mt-2 [&>li]:pl-2",
          numbered?: "list-decimal marker:font-medium",
          not_numbered?: "list-disc"
        )
      }
    end
  end
end
