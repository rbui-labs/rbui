# frozen_string_literal: true

module PhlexUI
    class Table::Row < Base
        def template(&)
            tr(**attrs, &)
        end

        private

        def default_attrs
            {
                class: "border-b transition-colors hover:bg-muted-background hover:bg-opacity-50 data-[state=selected]:bg-muted-background"
            }
        end
    end
end