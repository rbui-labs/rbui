# frozen_string_literal: true

module PhlexUI
    class Table::Caption < Base
        def template(&)
            caption(**attrs, &)
        end

        private

        def default_attrs
            {
                class: "mt-4 text-sm text-muted-foreground"
            }
        end
    end
end