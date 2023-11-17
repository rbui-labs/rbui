# frozen_string_literal: true

module PhlexUI
    class Table::Head < Base
        def template(&)
            th(**attrs, &)
        end

        private

        def default_attrs
            {
                class: "h-10 px-2 text-left align-middle font-medium text-muted-text [&:has([role=checkbox])]:pr-0 [&>[role=checkbox]]:translate-y-[2px]"
            }
        end
    end
end