# frozen_string_literal: true

module PhlexUI
    class Alert::Title < Base
        def template(&)
            h5(**attrs, &)
        end

        private

        def default_attrs
            {
                class: "mb-1 font-medium leading-none tracking-tight",
            }
        end
    end
end
