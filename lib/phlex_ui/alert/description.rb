# frozen_string_literal: true

module PhlexUI
    class Alert::Description < Base
        def template(&)
            div(**attrs, &)
        end

        private

        def default_attrs
            {
                class: "text-sm [&_p]:leading-relaxed",
            }
        end
    end
end
